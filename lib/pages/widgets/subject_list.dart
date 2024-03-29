import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SubjectList extends StatelessWidget {
  final String? subjectId;
  final String? cId;
  final String? subjectName;
  final String? subjectStatus;
  final String? subjectCratedDate;
  final String? category;
  final String? categoryStatus;
  final String? categoryCreatedDate;
  const SubjectList({
    Key? key,
    this.subjectId,
    this.cId,
    this.subjectName,
    this.subjectStatus,
    this.subjectCratedDate,
    this.category,
    this.categoryStatus,
    this.categoryCreatedDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25.0),
        ),
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Subject ID:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(subjectId.toString(),
                    style: const TextStyle(fontSize: 18)),
                const Text("C ID:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(cId.toString(), style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Subject Name: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(subjectName.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Subject Status: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(subjectStatus.toString(),
                      style: const TextStyle(fontSize: 18)),
                ]),
            const Text("Subject create date:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(subjectCratedDate.toString(),
                style: const TextStyle(fontSize: 18)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Category:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(category.toString(), style: const TextStyle(fontSize: 18)),
                const Text("category Status: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(categoryStatus.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            const Text("category Create date:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(categoryCreatedDate.toString(),
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
      web: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25.0),
        ),
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Subject ID: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(subjectId.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("C ID: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(cId.toString(), style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Subject Name: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(subjectName.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Subject Status: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(subjectStatus.toString(),
                      style: const TextStyle(fontSize: 18)),
                ]),
            const Text("Subject create date:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(subjectCratedDate.toString(),
                style: const TextStyle(fontSize: 18)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Category:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(category.toString(), style: const TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("category Status: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(categoryStatus.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
            const Text("category Create date:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(categoryCreatedDate.toString(),
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
