import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  final allChecked = CheckBoxModal(title: 'All Checked');
  final checkBoxList = [
    CheckBoxModal(title: 'ICloud'),
    CheckBoxModal(title: 'Gmail'),
    CheckBoxModal(title: 'Hotmail'),
    CheckBoxModal(title: 'VIP'),
  ];
  final checkBoxList1 = [
    CheckBoxModal(title: 'Secure'),
    CheckBoxModal(title: 'Notifications'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mailboxes"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                onPressed: () {},
                padding: const EdgeInsets.fromLTRB(0, 20, 920, 0),
                child: Text(
                  "Maiboxes",
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  onTap: () => onAllChecked(allChecked),
                  leading: Checkbox(
                    value: allChecked.value,
                    onChanged: (value) => onAllChecked(allChecked),
                  ),
                  title: Text(
                    allChecked.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ...checkBoxList.map(
                  (item) => ListTile(
                    onTap: () => onAllChecked(item),
                    leading: Checkbox(
                      value: allChecked.value,
                      onChanged: (value) => onAllChecked(item),
                    ),
                    title: Text(
                      item.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                onPressed: () {},
                padding: const EdgeInsets.fromLTRB(0, 20, 920, 0),
                child: Text(
                  "Special folders",
style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              children: [
                Divider(),
                ...checkBoxList1.map(
                  (item) => ListTile(
                    onTap: () => onAllChecked(item),
                    leading: Checkbox(
                      value: allChecked.value,
                      onChanged: (value) => onAllChecked(item),
                    ),
                    title: Text(
                      item.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                onPressed: () {},
                child: Text(
                  "DELETE",
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onAllChecked(CheckBoxModal ckbItem) {
    ckbItem.value = !ckbItem.value;
  }
}

class CheckBoxModal {
  String title;
  bool value;
  CheckBoxModal({required this.title, this.value = false});
}