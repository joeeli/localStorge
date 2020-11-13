function runInitialConfiguration() {
    // create the instance of the database object
    db = LocalStorage.openDatabaseSync(dbId, dbVersion, dbDescription, dbSize);

    // set up a table inside the database
    db.transaction(function(tx) {
        var sql = 'CREATE TABLE IF NOT EXISTS person'
        + '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
        + 'name TEXT NOT NULL, age INTERGET NOT NULL)';
        tx.executeSql(sql);
    });
}
