import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static DbHelper dbHelper = DbHelper._();

  DbHelper._();

  Database? db;

  get database async => db ?? await initDatabase();

  initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'product.db');
    db = await openDatabase(dbPath, version: 1,
        onCreate: (dbPath, version) async {
      String sql =
          '''CREATE TABLE product (name TEXT PRIMARY KEY, Category TEXT NOT NULL, Quantity INTEGER NOT NULL  );
           ''';
      await db?.execute(sql);
    });
    return db;
  }
}
