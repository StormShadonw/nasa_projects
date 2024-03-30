class Transition {
  int? transitionId;
  int? projectId;
  String? transitionDate;
  String? path;
  String? url;
  String? details;
  String? infoText;
  String? infoTextExtra;
  String? dateText;

  Transition(
      {this.transitionId,
      this.projectId,
      this.transitionDate,
      this.path,
      this.url,
      this.details,
      this.infoText,
      this.infoTextExtra,
      this.dateText});

  Transition.fromJson(Map<String, dynamic> json) {
    transitionId = json['transitionId'];
    projectId = json['projectId'];
    transitionDate = json['transitionDate'];
    path = json['path'];
    url = json['url'];
    details = json['details'];
    infoText = json['infoText'];
    infoTextExtra = json['infoTextExtra'];
    dateText = json['dateText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transitionId'] = this.transitionId;
    data['projectId'] = this.projectId;
    data['transitionDate'] = this.transitionDate;
    data['path'] = this.path;
    data['url'] = this.url;
    data['details'] = this.details;
    data['infoText'] = this.infoText;
    data['infoTextExtra'] = this.infoTextExtra;
    data['dateText'] = this.dateText;
    return data;
  }
}
