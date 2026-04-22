class Student {
  final int? id;
  final String name;
  final double quiz;
  final double activity;
  final double exam;

  Student({
    this.id,
    required this.name,
    required this.quiz,
    required this.activity,
    required this.exam,
  });
  
  // Calculate average
  double get average => (quiz + activity + exam) / 3;

  // Determine status
  String get status => average >= 75 ? 'Passed' : 'Failed';

  // From database
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      quiz: double.parse(map['quiz'].toString()),
      activity: double.parse(map['activity'].toString()),
      exam: double.parse(map['exam'].toString()),
    );
  }

  // To database
 Map<String, dynamic> toMap() {
  final map = {
    'name': name,
    'quiz': quiz,
    'activity': activity,
    'exam': exam,
  };
  if (id != null) map['id'] = id!;
  return map;
}

  // Convert to JSON
  String toJson() {
    return '{"id": $id, "name": "$name", "quiz": $quiz, "activity": $activity, "exam": $exam}';
  }

  // Create a copy with modified fields
  Student copyWith({
    int? id,
    String? name,
    double? quiz,
    double? activity,
    double? exam,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      quiz: quiz ?? this.quiz,
      activity: activity ?? this.activity,
      exam: exam ?? this.exam,
    );
  }

  // String representation
  @override
  String toString() {
    return 'Student(id: $id, name: $name, quiz: $quiz, activity: $activity, exam: $exam, average: $average, status: $status)';
  }

  // Equality comparison
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Student &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          quiz == other.quiz &&
          activity == other.activity &&
          exam == other.exam;

  // Hash code
  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      quiz.hashCode ^
      activity.hashCode ^
      exam.hashCode;
}
