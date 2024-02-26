class UserDetail {
  String id;
  String image;
  String name;
  String username;
  int post;
  int followers;
  int following;
  int likes;
  String comment;
  String address;

  UserDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.username,
    required this.post,
    required this.followers,
    required this.following,
    required this.likes,
    required this.comment,
    required this.address,
  });
}

List<UserDetail> userItems = [
  UserDetail(
      id: '1',
      image: "assets/images/c.jpg",
      name: 'Emily Johnson',
      post: 25,
      username: "emily.john",
      followers: 7850,
      following: 100,
      likes: 1298,
      comment: "So Beautiful",
      address: 'Fashion-Designer, London UK'),
  UserDetail(
      id: '2',
      image: "assets/images/a.jpg",
      name: 'Sophia Williams',
      username: "sophi_will7",
      post: 245,
      followers: 750,
      following: 715,
      likes: 2875,
      comment: "Wow i likem it",
      address: 'Designer,US'),
  UserDetail(
      id: '3',
      image: "assets/images/b.jpg",
      name: 'Olivia Brown',
      post: 245,
      username: "olivia_brown1",
      followers: 850,
      following: 1,
      likes: 2234,
      comment: "In heaven",
      address: 'Programmer,Nepal'),
  UserDetail(
      id: '4',
      image: "assets/images/d.jpg",
      name: 'Ava Davis',
      post: 245,
      username: "ava.davis",
      followers: 7850,
      following: 230,
      likes: 2,
      comment: "Beautiful",
      address: 'Flutter Devloper,Canada'),
  UserDetail(
      id: '5',
      image: "assets/images/e.jpg",
      name: 'Tyler Smith',
      post: 245,
      username: "tyler.smith",
      followers: 780,
      following: 1236,
      likes: 78039,
      comment: "you are don",
      address: 'Designer,US'),
  UserDetail(
      id: '6',
      image: "assets/images/f.jpg",
      name: 'Ethan Jones',
      post: 245,
      username: "ethanjones2",
      followers: 785,
      following: 10,
      likes: 55555,
      comment: "in my way ",
      address: 'YouTuber,India'),
];
