class HomeResponse {
  Data? data;
  String? message;
  bool? response;

  HomeResponse({this.data, this.message, this.response});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['response'] = response;
    return data;
  }
}

class Data {
  List<Allevent>? allevent;
  List<Data>? todayevent;
  List<Data>? tomorrowevent;
  List<Data>? wekendevent;
  List<Data>? populerevents;
  List<Benner>? benner;
  List<Eventcategory>? eventcategory;
  List<Organizationlist>? organizationlist;

  Data(
      {this.allevent,
        this.todayevent,
        this.tomorrowevent,
        this.wekendevent,
        this.populerevents,
        this.benner,
        this.eventcategory,
        this.organizationlist});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['allevent'] != null) {
      allevent = <Allevent>[];
      json['allevent'].forEach((v) {
        allevent!.add(Allevent.fromJson(v));
      });
    }
    if (json['todayevent'] != null) {
      todayevent = <Data>[];
      json['todayevent'].forEach((v) {
        todayevent!.add(Data.fromJson(v));
      });
    }
    // if (json['tomorrowevent'] != null) {
    //   tomorrowevent = <Data>[];
    //   json['tomorrowevent'].forEach((v) {
    //     tomorrowevent!.add(Data.Data(v));
    //   });
    // }
    if (json['wekendevent'] != null) {
      wekendevent = <Data>[];
      json['wekendevent'].forEach((v) {
        wekendevent!.add(Data.fromJson(v));
      });
    }
    // if (json['populerevents'] != null) {
    //   populerevents = <Populerevents>[];
    //   json['populerevents'].forEach((v) {
    //     populerevents!.add(Populerevents.fromJson(v));
    //   });
    // }
    if (json['benner'] != null) {
      benner = <Benner>[];
      json['benner'].forEach((v) {
        benner!.add(Benner.fromJson(v));
      });
    }
    if (json['eventcategory'] != null) {
      eventcategory = <Eventcategory>[];
      json['eventcategory'].forEach((v) {
        eventcategory!.add(Eventcategory.fromJson(v));
      });
    }
    if (json['organizationlist'] != null) {
      organizationlist = <Organizationlist>[];
      json['organizationlist'].forEach((v) {
        organizationlist!.add(Organizationlist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (allevent != null) {
      data['allevent'] = allevent!.map((v) => v.toJson()).toList();
    }
    if (todayevent != null) {
      data['todayevent'] = todayevent!.map((v) => v.toJson()).toList();
    }
    if (tomorrowevent != null) {
      data['tomorrowevent'] =
          tomorrowevent!.map((v) => v.toJson()).toList();
    }
    if (wekendevent != null) {
      data['wekendevent'] = wekendevent!.map((v) => v.toJson()).toList();
    }
    if (populerevents != null) {
      data['populerevents'] =
          populerevents!.map((v) => v.toJson()).toList();
    }
    if (benner != null) {
      data['benner'] = benner!.map((v) => v.toJson()).toList();
    }
    if (eventcategory != null) {
      data['eventcategory'] =
          eventcategory!.map((v) => v.toJson()).toList();
    }
    if (organizationlist != null) {
      data['organizationlist'] =
          organizationlist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Allevent {
  String? eventId;
  String? eventImage;
  String? eventName;
  String? eventStartDatetime;
  String? eventEndDatetime;
  String? eventLocation;
  String? domainName;
  int? liked;
  List<Ticketdata>? ticketdata;
  String? currencySymbol;
  String? currencyType;

  Allevent(
      {this.eventId,
        this.eventImage,
        this.eventName,
        this.eventStartDatetime,
        this.eventEndDatetime,
        this.eventLocation,
        this.domainName,
        this.liked,
        this.ticketdata,
        this.currencySymbol,
        this.currencyType});

  Allevent.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    eventImage = json['event_image'];
    eventName = json['event_name'];
    eventStartDatetime = json['event_start_datetime'];
    eventEndDatetime = json['event_end_datetime'];
    eventLocation = json['event_location'];
    domainName = json['domain_name'];
    liked = json['liked'];
    if (json['ticketdata'] != null) {
      ticketdata = <Ticketdata>[];
      json['ticketdata'].forEach((v) {
        ticketdata!.add(Ticketdata.fromJson(v));
      });
    }
    currencySymbol = json['currency_symbol'];
    currencyType = json['currency_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['event_id'] = eventId;
    data['event_image'] = eventImage;
    data['event_name'] = eventName;
    data['event_start_datetime'] = eventStartDatetime;
    data['event_end_datetime'] = eventEndDatetime;
    data['event_location'] = eventLocation;
    data['domain_name'] = domainName;
    data['liked'] = liked;
    if (ticketdata != null) {
      data['ticketdata'] = ticketdata!.map((v) => v.toJson()).toList();
    }
    data['currency_symbol'] = currencySymbol;
    data['currency_type'] = currencyType;
    return data;
  }
}

class Ticketdata {
  int? ticketRemaningQty;
  String? ticketPriceBuyer;

  Ticketdata({this.ticketRemaningQty, this.ticketPriceBuyer});

  Ticketdata.fromJson(Map<String, dynamic> json) {
    ticketRemaningQty = json['ticket_remaning_qty'];
    ticketPriceBuyer = json['ticket_price_buyer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ticket_remaning_qty'] = ticketRemaningQty;
    data['ticket_price_buyer'] = ticketPriceBuyer;
    return data;
  }
}

class Benner {
  String? id;
  String? bannerImage;
  String? headerText;
  String? headerDescription;
  String? link;
  String? eventId;
  String? domainName;

  Benner(
      {this.id,
        this.bannerImage,
        this.headerText,
        this.headerDescription,
        this.link,
        this.eventId,
        this.domainName});

  Benner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerImage = json['banner_image'];
    headerText = json['header_text'];
    headerDescription = json['header_description'];
    link = json['link'];
    eventId = json['event_id'];
    domainName = json['domain_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['banner_image'] = bannerImage;
    data['header_text'] = headerText;
    data['header_description'] = headerDescription;
    data['link'] = link;
    data['event_id'] = eventId;
    data['domain_name'] = domainName;
    return data;
  }
}

class Eventcategory {
  String? id;
  String? categoryImage;
  String? categoryName;
  String? categoryDescription;

  Eventcategory(
      {this.id,
        this.categoryImage,
        this.categoryName,
        this.categoryDescription});

  Eventcategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryImage = json['category_image'];
    categoryName = json['category_name'];
    categoryDescription = json['category_description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['category_image'] = categoryImage;
    data['category_name'] = categoryName;
    data['category_description'] = categoryDescription;
    return data;
  }
}

class Organizationlist {
  String? id;
  String? domainName;
  String? orgImage;
  String? organizerName;
  String? aboutOrganizer;

  Organizationlist(
      {this.id,
        this.domainName,
        this.orgImage,
        this.organizerName,
        this.aboutOrganizer});

  Organizationlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    domainName = json['domain_name'];
    orgImage = json['org_image'];
    organizerName = json['organizer_name'];
    aboutOrganizer = json['about_organizer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['domain_name'] = domainName;
    data['org_image'] = orgImage;
    data['organizer_name'] = organizerName;
    data['about_organizer'] = aboutOrganizer;
    return data;
  }
}
