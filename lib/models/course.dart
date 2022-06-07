class Course {
  String author;
  String authorImg;
  String title;
  String imgUrl;

  Course(this.author, this.authorImg, this.title, this.imgUrl);

  static List<Course> generateCourses(){
    return[
      Course('Luma Lanari', 'assets/images/avater01.png', 'Plant', 'assets/images/course01.png'),
      Course('Daniel Dia', 'assets/images/avater02.png', 'Bird', 'assets/images/course02.png')
    ];
  }
}