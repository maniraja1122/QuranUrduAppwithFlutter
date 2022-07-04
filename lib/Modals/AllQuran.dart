class Surah {
  int? id;
  String? name; //arabic
  String? transliteration; //eng
  String? translation; // urdu
  String? type;
  int? totalVerses;
  List<Verses>? verses;

  Surah(
      {this.id,
        this.name,
        this.transliteration,
        this.translation,
        this.type,
        this.totalVerses,
        this.verses});

  Surah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    transliteration = json['transliteration'];
    translation = json['translation'];
    type = json['type'];
    totalVerses = json['total_verses'];
    if (json['verses'] != null) {
      verses = <Verses>[];
      json['verses'].forEach((v) {
        verses!.add(new Verses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['transliteration'] = this.transliteration;
    data['translation'] = this.translation;
    data['type'] = this.type;
    data['total_verses'] = this.totalVerses;
    if (this.verses != null) {
      data['verses'] = this.verses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Verses {
  int? id;
  String? text;
  String? translation;

  Verses({this.id, this.text, this.translation});

  Verses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    translation = json['translation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['translation'] = this.translation;
    return data;
  }
}
