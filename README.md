# Task Manager App

## Overview

This is a Flutter Task Manager app connected to Firebase Firestore. The app allows users to create, read, update, and delete tasks in real time. Each task can also have subtasks, and all data is stored in the cloud so it persists after restarting the app.

## Features

* Add tasks with a title
* Mark tasks as complete using a checkbox
* Delete tasks with confirmation
* Real-time updates using Firestore StreamBuilder
* Nested subtasks for each task
* Input validation to prevent empty tasks
* Loading, empty, and error states handled

## Enhanced Features

1. Nested Subtasks
   Each task can be expanded to add and view subtasks. These are stored as a list inside Firestore and update in real time.

2. Delete Confirmation Dialog
   Before deleting a task, a confirmation popup appears to prevent accidental deletion.

## Technologies Used

* Flutter
* Firebase Core
* Cloud Firestore

## Setup Instructions

1. Clone the repository
2. Run `flutter pub get`
3. Configure Firebase using FlutterFire CLI:

   ```
   flutterfire configure
   ```
4. Run the app:

   ```
   flutter run
   ```

## Known Limitations

* Subtasks cannot be deleted individually
* No user authentication implemented
* No offline mode support

## APK

The APK file is included in the repository for direct installation.
