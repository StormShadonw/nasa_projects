import 'package:nasa_projects/models/destination.dart';
import 'package:nasa_projects/models/funding_parents.dart';
import 'package:nasa_projects/models/lead_organization.dart';
import 'package:nasa_projects/models/primary_taxonomy_node.dart.dart';
import 'package:nasa_projects/models/program.dart';
import 'package:nasa_projects/models/program_director.dart';
import 'package:nasa_projects/models/program_executive.dart';
import 'package:nasa_projects/models/program_manager.dart';
import 'package:nasa_projects/models/responsible.dart';
import 'package:nasa_projects/models/state_with_work.dart';
import 'package:nasa_projects/models/supporting_organization.dart';

class Project {
  String? acronym;
  int? projectId;
  String? title;
  List<PrimaryTaxonomyNodes>? primaryTaxonomyNodes;
  int? startTrl;
  int? currentTrl;
  int? endTrl;
  String? benefits;
  String? description;
  List<Destination>? destinations;
  int? startYear;
  int? startMonth;
  int? endYear;
  int? endMonth;
  String? statusDescription;
  List<ProgramDirector>? programDirectors;
  List<ProgramExecutive>? programExecutives;
  List<ProgramManager>? programManagers;
  String? website;
  List<Null>? libraryItems;
  List<Null>? transitions;
  ResponsibleMd? responsibleMd;
  Program? program;
  LeadOrganization? leadOrganization;
  List<SupportingOrganization>? supportingOrganizations;
  List<CoFundingPartners>? coFundingPartners;
  List<StatesWithWork>? statesWithWork;
  String? lastUpdated;
  String? releaseStatusString;
  int? viewCount;
  String? endDateString;
  String? startDateString;

  Project(
      {this.acronym,
      this.projectId,
      this.title,
      this.primaryTaxonomyNodes,
      this.startTrl,
      this.currentTrl,
      this.endTrl,
      this.benefits,
      this.description,
      this.destinations,
      this.startYear,
      this.startMonth,
      this.endYear,
      this.endMonth,
      this.statusDescription,
      this.programDirectors,
      this.programExecutives,
      this.programManagers,
      this.website,
      this.libraryItems,
      this.transitions,
      this.responsibleMd,
      this.program,
      this.leadOrganization,
      this.supportingOrganizations,
      this.coFundingPartners,
      this.statesWithWork,
      this.lastUpdated,
      this.releaseStatusString,
      this.viewCount,
      this.endDateString,
      this.startDateString});

  Project.fromJson(Map<String, dynamic> json) {
    acronym = json['acronym'];
    projectId = json['projectId'];
    title = json['title'];
    if (json['primaryTaxonomyNodes'] != null) {
      primaryTaxonomyNodes = <PrimaryTaxonomyNodes>[];
      json['primaryTaxonomyNodes'].forEach((v) {
        primaryTaxonomyNodes!.add(new PrimaryTaxonomyNodes.fromJson(v));
      });
    }
    startTrl = json['startTrl'];
    currentTrl = json['currentTrl'];
    endTrl = json['endTrl'];
    benefits = json['benefits'];
    description = json['description'];
    if (json['destinations'] != null) {
      destinations = <Destination>[];
      json['destinations'].forEach((v) {
        destinations!.add(new Destination.fromJson(v));
      });
    }
    startYear = json['startYear'];
    startMonth = json['startMonth'];
    endYear = json['endYear'];
    endMonth = json['endMonth'];
    statusDescription = json['statusDescription'];
    if (json['programDirectors'] != null) {
      programDirectors = <ProgramDirector>[];
      json['programDirectors'].forEach((v) {
        programDirectors!.add(new ProgramDirector.fromJson(v));
      });
    }
    if (json['programExecutives'] != null) {
      programExecutives = <ProgramExecutive>[];
      json['programExecutives'].forEach((v) {
        programExecutives!.add(new ProgramExecutive.fromJson(v));
      });
    }
    if (json['programManagers'] != null) {
      programManagers = <ProgramManager>[];
      json['programManagers'].forEach((v) {
        programManagers!.add(new ProgramManager.fromJson(v));
      });
    }
    website = json['website'];
    // if (json['libraryItems'] != null) {
    //   libraryItems = <Null>[];
    //   json['libraryItems'].forEach((v) {
    //     libraryItems!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['transitions'] != null) {
    //   transitions = <Null>[];
    //   json['transitions'].forEach((v) {
    //     transitions!.add(new Null.fromJson(v));
    //   });
    // }
    responsibleMd = json['responsibleMd'] != null
        ? new ResponsibleMd.fromJson(json['responsibleMd'])
        : null;
    program =
        json['program'] != null ? new Program.fromJson(json['program']) : null;
    leadOrganization = json['leadOrganization'] != null
        ? new LeadOrganization.fromJson(json['leadOrganization'])
        : null;
    if (json['supportingOrganizations'] != null) {
      supportingOrganizations = <SupportingOrganization>[];
      json['supportingOrganizations'].forEach((v) {
        supportingOrganizations!.add(new SupportingOrganization.fromJson(v));
      });
    }
    if (json['coFundingPartners'] != null) {
      coFundingPartners = <CoFundingPartners>[];
      json['coFundingPartners'].forEach((v) {
        coFundingPartners!.add(new CoFundingPartners.fromJson(v));
      });
    }
    if (json['statesWithWork'] != null) {
      statesWithWork = <StatesWithWork>[];
      json['statesWithWork'].forEach((v) {
        statesWithWork!.add(new StatesWithWork.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
    releaseStatusString = json['releaseStatusString'];
    viewCount = json['viewCount'];
    endDateString = json['endDateString'];
    startDateString = json['startDateString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acronym'] = this.acronym;
    data['projectId'] = this.projectId;
    data['title'] = this.title;
    if (this.primaryTaxonomyNodes != null) {
      data['primaryTaxonomyNodes'] =
          this.primaryTaxonomyNodes!.map((v) => v.toJson()).toList();
    }
    data['startTrl'] = this.startTrl;
    data['currentTrl'] = this.currentTrl;
    data['endTrl'] = this.endTrl;
    data['benefits'] = this.benefits;
    data['description'] = this.description;
    if (this.destinations != null) {
      data['destinations'] = this.destinations!.map((v) => v.toJson()).toList();
    }
    data['startYear'] = this.startYear;
    data['startMonth'] = this.startMonth;
    data['endYear'] = this.endYear;
    data['endMonth'] = this.endMonth;
    data['statusDescription'] = this.statusDescription;
    if (this.programDirectors != null) {
      data['programDirectors'] =
          this.programDirectors!.map((v) => v.toJson()).toList();
    }
    if (this.programExecutives != null) {
      data['programExecutives'] =
          this.programExecutives!.map((v) => v.toJson()).toList();
    }
    if (this.programManagers != null) {
      data['programManagers'] =
          this.programManagers!.map((v) => v.toJson()).toList();
    }
    data['website'] = this.website;
    // if (this.libraryItems != null) {
    //   data['libraryItems'] = this.libraryItems!.map((v) => v.toJson()).toList();
    // }
    // if (this.transitions != null) {
    //   data['transitions'] = this.transitions!.map((v) => v.toJson()).toList();
    // }
    if (this.responsibleMd != null) {
      data['responsibleMd'] = this.responsibleMd!.toJson();
    }
    if (this.program != null) {
      data['program'] = this.program!.toJson();
    }
    if (this.leadOrganization != null) {
      data['leadOrganization'] = this.leadOrganization!.toJson();
    }
    if (this.supportingOrganizations != null) {
      data['supportingOrganizations'] =
          this.supportingOrganizations!.map((v) => v.toJson()).toList();
    }
    if (this.coFundingPartners != null) {
      data['coFundingPartners'] =
          this.coFundingPartners!.map((v) => v.toJson()).toList();
    }
    if (this.statesWithWork != null) {
      data['statesWithWork'] =
          this.statesWithWork!.map((v) => v.toJson()).toList();
    }
    data['lastUpdated'] = this.lastUpdated;
    data['releaseStatusString'] = this.releaseStatusString;
    data['viewCount'] = this.viewCount;
    data['endDateString'] = this.endDateString;
    data['startDateString'] = this.startDateString;
    return data;
  }
}
