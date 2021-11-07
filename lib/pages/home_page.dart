import 'package:flutter/material.dart';
import 'package:untitled3/models/subject_model.dart';
import 'package:untitled3/pages/widgets/subject_list.dart';
import 'package:untitled3/services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SubjectModel> _subjects = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getSubjects();
  }

  Future<void> getSubjects() async {
    _subjects = await APIServices.getSubject();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _subjects.length,
              itemBuilder: (context, index) {
                return SubjectList(
                  subjectId: _subjects[index].subjectid.toString(),
                  cId: _subjects[index].cid.toString(),
                  subjectName: _subjects[index].subject,
                  subjectStatus: _subjects[index].subjectStatus.toString(),
                  subjectCratedDate: _subjects[index].categoryCreatedat,
                  category: _subjects[index].category,
                  categoryStatus: _subjects[index].categoryStatus.toString(),
                  categoryCreatedDate: _subjects[index].categoryCreatedat,
                );
              },
            ),
    );
  }
}
