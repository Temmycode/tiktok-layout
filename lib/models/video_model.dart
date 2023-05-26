// import 'dart:html';

class VideoModel {
  bool like;
  String title;
  int id;
  String profilePhoto;
  String uid;
  String creator;
  DateTime dateCreated;
  String description;
  int noOfLikes;
  int noOfComments;
  int noOfSaves;
  int noOfShares;

  VideoModel({
    required this.like,
    required this.title,
    required this.creator,
    required this.dateCreated,
    required this.description,
    required this.noOfLikes,
    required this.noOfComments,
    required this.noOfSaves,
    required this.noOfShares,
    required this.profilePhoto,
    required this.id,
    required this.uid,
  });
}

//   Map<String, dynamic> toJson() => {
//       'uid' : uid,
//       'id' : id,
//        'like' : like,
//       'profilePhoto' : profilePhoto,
//         'title': title,
//         'creator': creator,
//         'dateCreated': dateCreated,
//         'description': description,
//         'noOfLikes': noOfLikes,
//         'noOfComments': noOfComments,
//         'noOfSaves': noOfSaves,
//         'noOfShares': noOfShares,
//       };
// }

// factory VideoModel.fromJson(DocumentSnapshot snap) {
//   final snapshot = snap.docs() as Map<String, dynamic>;

//   return VideoModel(title: snapshot['title'], creator: snapshot['creator'], dateCreated: snapshot['dateCreated'], description: snapshot['description'], noOfLikes: snapshot['noOfLikes'], noOfComments: snapshot['noOfComments'], noOfSaves: snapshot['noOfSaves'], noOfShares: snapshot['noOfShares'], profilePhoto: snapshot['profilePhoto'], id: snapshot['id'], uid: snapshot['uid'],);

// }
