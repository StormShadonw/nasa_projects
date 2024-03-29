class PrimaryTaxonomyNodes {
  int? taxonomyNodeId;
  int? taxonomyRootId;
  int? parentNodeId;
  int? level;
  String? code;
  String? title;
  String? definition;
  bool? hasChildren;
  bool? hasInteriorContent;

  PrimaryTaxonomyNodes(
      {this.taxonomyNodeId,
      this.taxonomyRootId,
      this.parentNodeId,
      this.level,
      this.code,
      this.title,
      this.definition,
      this.hasChildren,
      this.hasInteriorContent});

  PrimaryTaxonomyNodes.fromJson(Map<String, dynamic> json) {
    taxonomyNodeId = json['taxonomyNodeId'];
    taxonomyRootId = json['taxonomyRootId'];
    parentNodeId = json['parentNodeId'];
    level = json['level'];
    code = json['code'];
    title = json['title'];
    definition = json['definition'];
    hasChildren = json['hasChildren'];
    hasInteriorContent = json['hasInteriorContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taxonomyNodeId'] = this.taxonomyNodeId;
    data['taxonomyRootId'] = this.taxonomyRootId;
    data['parentNodeId'] = this.parentNodeId;
    data['level'] = this.level;
    data['code'] = this.code;
    data['title'] = this.title;
    data['definition'] = this.definition;
    data['hasChildren'] = this.hasChildren;
    data['hasInteriorContent'] = this.hasInteriorContent;
    return data;
  }
}
