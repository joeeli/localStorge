function loadInformation() {
    // read information from person table
    db.transaction(function(tx){
        // var sql = 'SELECT * FROM person';
        var sql = 'SELECT id,name,age FROM person';
        var rs = tx.executeSql(sql);
        var myId; // id of person
        var myName; // name 
        var myAge; // age 
        var ix;
        for (ix= 0; ix < rs.rows.length; ++ix) {
            myId = rs.rows.item(ix).id;
            myName = rs.rows.item(ix).name;
            myAge = rs.rows.item(ix).age;
            personListView.model.append({
               id: myId,
               name: myName,
               age: myAge,
            });
        }
    });
}

