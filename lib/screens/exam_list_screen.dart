import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';

class ExamListScreen extends StatelessWidget {
  final String studentIndex = "215072";
  final List<Exam> exams = [
    Exam(subjectName: "Структурно програмирање", dateTime: DateTime(2026, 1, 15, 9, 0), rooms: ["лаб. 2", "лаб. 200АБ"]),
    Exam(subjectName: "Калкулус 2", dateTime: DateTime(2023, 12, 12, 10, 0), rooms: ["Б2.1", "Б2.2"]),
    Exam(subjectName: "Физика", dateTime: DateTime(2023, 12, 13, 8, 0), rooms: ["112 ФЕИТ"]),
    Exam(subjectName: "Електрични кола", dateTime: DateTime(2025, 12, 13, 12, 0), rooms: ["112 ФЕИТ"]),
    Exam(subjectName: "Оперативни системи", dateTime: DateTime(2025, 12, 14, 9, 30), rooms: ["лаб. 138"]),
    Exam(subjectName: "Дизајн на дигитални кола", dateTime: DateTime(2025, 12, 14, 13, 0), rooms: ["Б3.1"]),
    Exam(subjectName: "Бази на податоци", dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ["АМФ ФИНКИ"]),
    Exam(subjectName: "Безжични и мобилни системи", dateTime: DateTime(2025, 12, 15, 10, 30), rooms: ["лаб. 138"]),
    Exam(subjectName: "Објектно-ориентирано програмирање", dateTime: DateTime(2025, 12, 15, 10, 0), rooms: ["лаб. 2", "лаб. 3", "лаб. 138"]),
    Exam(subjectName: "Веројатност и статистика", dateTime: DateTime(2025, 12, 19, 9, 0), rooms: ["АМФ МФС", "АМФ ФИНКИ"]),
  ];

  ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: Text("Распоред за испити - $studentIndex"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          return ExamCard(exam: exams[index]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.blue.shade100,
        child: Center(
          child: Text(
            "Вкупно испити: ${exams.length}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
