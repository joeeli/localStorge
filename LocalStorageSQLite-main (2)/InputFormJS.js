function savenIformation() {
    // save the information in the database
    var name = nameTextField.text;
    var age = ageTextField.text;
    db.transaction(function(tx) {
        var sql = 'INSERT INTO person (name,age) VALUES (\''
                + name + '\','+ age + ')';
        tx.executeSql(sql);
    });

    // we return to the list of people (dataForm)
    stackView.push(dataForm);

}
