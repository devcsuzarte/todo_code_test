import 'package:sqflite/sqflite.dart';
import 'model/task_model.dart';
import 'package:path/path.dart';

class TaskiDB {
  final tableName = 'tasks';

  Future<void> createTable(Database database) async {
    await database.execute("""
    CREATE TABLE IF NOT EXISTS $tableName (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    note TEXT NOT NULL,
    isDone INTEGER NOT NULL
    )
    """);
  }

  Future<List<TaskModel>> fetchTasks(int isDone) async {
    final db = await DatabaseService().database;
    final data = await db.query(
      tableName,
      where: 'isDone = ?',
      whereArgs: [isDone],
    );
    List<TaskModel> tasks = data
        .map(
          (e) => TaskModel(
              id: e['id'] as int?,
              title: e['title'] as String?,
              note: e['note'] as String?,
              isDone: e['isDone'] as int?),
        )
        .toList();
    print("from DB: ${data}");
    return tasks;
  }

  Future<int> create(
      {required String title,
      required String note,
      required int isDone}) async {
    final db = await DatabaseService().database;
    return await db.rawInsert(
        '''INSERT INTO $tableName (title, note, isDone) VALUES (?,?,?)''',
        [title, note, isDone]);
  }

  Future<int> update({required TaskModel task}) async {
    final db = await DatabaseService().database;
    return await db.update(tableName, {'isDone': 1},
        where: 'id = ?', whereArgs: [task.id]);
  }

  Future<int> delete({required int id}) async {
    final db = await DatabaseService().database;
    return await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteFinishedTasks() async {
    final db = await DatabaseService().database;
    return await db.delete(
      tableName,
      where: 'isDone = ?',
      whereArgs: [1],
    );
  }
}

class DatabaseService {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initialize();
    return _database!;
  }

  Future<String> get fullPath async {
    const name = 'taski.db';
    final path = await getDatabasesPath();
    return (join(path, name));
  }

  Future<Database> _initialize() async {
    final path = await fullPath;
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: create,
      singleInstance: true,
    );

    return database;
  }

  Future<void> create(Database database, int version) async =>
      await TaskiDB().createTable(database);
}
