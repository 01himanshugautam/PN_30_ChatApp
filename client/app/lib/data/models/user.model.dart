// class GivewayModel {
//   int? id;
//   int? users;
//   String? title;
//   String? worth;
//   String? thumbnail;
//   String? description;
//   String? image;
//   String? instructions;
//   String? type;
//   String? publishedDate;
//   String? platforms;
//   String? endDate;
//   String? status;
//   String? gamerpowerUrl;
//   String? openGiveawayUrl;
//   String? openGiveaway;

//   GivewayModel({
//     required this.id,
//     required this.users,
//     required this.title,
//     required this.thumbnail,
//     required this.description,
//     required this.image,
//     required this.instructions,
//     required this.worth,
//     required this.type,
//     required this.publishedDate,
//     required this.platforms,
//     required this.endDate,
//     required this.status,
//     required this.gamerpowerUrl,
//     required this.openGiveawayUrl,
//     required this.openGiveaway,
//   });

//   GivewayModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     worth = json['worth'];
//     thumbnail = json['thumbnail'];
//     description = json['description'];
//     image = json['image'];
//     instructions = json['instructions'];
//     type = json['type'];
//     publishedDate = json['published_date'];
//     platforms = json['platforms'];
//     endDate = json['end_date'];
//     status = json['status'];
//     gamerpowerUrl = json['gamerpower_url'];
//     openGiveawayUrl = json['open_giveaway_url'];
//     openGiveaway = json['open_giveaway'];
//     users = json['users'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     data['worth'] = worth;
//     data['thumbnail'] = thumbnail;
//     data['description'] = description;
//     data['image'] = image;
//     data['instructions'] = instructions;
//     data['type'] = type;
//     data['published_date'] = publishedDate;
//     data['platforms'] = platforms;
//     data['end_date'] = endDate;
//     data['status'] = status;
//     data['gamerpower_url'] = gamerpowerUrl;
//     data['open_giveaway_url'] = openGiveawayUrl;
//     data['open_giveaway'] = openGiveaway;
//     data['users'] = users;
//     return data;
//   }
// }
