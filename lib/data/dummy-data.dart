import 'package:flutter/material.dart';
import 'package:learnascent_lms/models/categoryDetails.dart';
import 'package:learnascent_lms/models/lecmaterials.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Lecture Materials',
    imageUrl:
    'https://elitebgrowth.com/wp-content/uploads/2021/08/EliteElearning.jpg',
    color: Color.fromARGB(255, 162, 219, 255),
  ),
  Category(
    id: 'c2',
    title: 'Lecture Schedule',
    imageUrl:
    'https://static.vecteezy.com/system/resources/previews/007/721/213/original/isolated-schedule-concept-or-planner-planning-sticker-management-images-characters-and-people-for-presentations-professional-clipart-web-banner-infographics-flat-illustration-vector.jpg',
    color: Color.fromARGB(255, 162, 219, 255),
  ),
  Category(
    id: 'c3',
    title: 'Exam/Assignment Marks',
    imageUrl:
    'https://thehroutlook.com/wp-content/uploads/2022/11/How-to-Write-a-Job-Description.png',
    color: Color.fromARGB(255, 162, 219, 255),
  ),
];

const dummyLecMaterials = [
  LecMaterial(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Mobile Application Development',
    imageUrl:
    'https://www.techbrains.net/wp-content/uploads/2022/05/mobile-app-banner.jpg',
    lectures: [
      'Lecture 1',
      'Introduction to Mobile Application Development',
    ],
  ),
  LecMaterial(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Advanced Mathematics',
    imageUrl:
    'https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2020/07/09201427/Btech-Mathematics-and-Computing.jpg',
    lectures: [
      'Lecture 1',
      'Introduction to Advanced Mathematics',
    ],
  ),
  LecMaterial(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Database Management Systems',
    imageUrl:
    'https://miro.medium.com/v2/resize:fit:1400/1*LJeVeJKqiZ6vlsHKgRdrkw.png',
    lectures: [
      'Lecture 1',
      'Introduction to Database Management Systems',
    ],
  ),
  LecMaterial(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Lecture Schedule',
    imageUrl:
    'https://static.vecteezy.com/system/resources/previews/007/721/213/original/isolated-schedule-concept-or-planner-planning-sticker-management-images-characters-and-people-for-presentations-professional-clipart-web-banner-infographics-flat-illustration-vector.jpg',
    lectures: [
      '',
    ],
  ),
  LecMaterial(
    id: 'm5',
    categories: [
      'c3',
    ],
    title: 'Exam/Assignment Marks',
    imageUrl:
    'https://thehroutlook.com/wp-content/uploads/2022/11/How-to-Write-a-Job-Description.png',
    lectures: [
      '',
    ],
  ),
];