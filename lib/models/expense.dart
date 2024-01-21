import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category {
  food,
  travel,
  leisure,
  work,
}

const categoryIcons = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.local_movies_rounded,
  Category.work: Icons.work_rounded,
};


class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });


  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

//final String id;
//: id = uuid.v4();