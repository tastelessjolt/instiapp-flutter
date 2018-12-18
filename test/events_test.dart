import 'package:InstiApp/src/api/apiclient.dart';
import 'package:InstiApp/src/json_parsing.dart';
import 'package:jaguar_resty/jaguar_resty.dart';
import 'package:test/test.dart';
import 'package:http/io_client.dart';

void main() {

  // test("Network mess test", () async {
  //   globalClient = IOClient();
  //   final client = InstiAppApi();
  //   List<Hostel> hostels = await client.getHostelMess();
  //   expect(hostels[0].name, isNotNull);
  // });
  test("Test feed.json parsing", () {
    final newFeedResponse = parseEvents(eventsJsonString);
    expect(newFeedResponse.count, 4);
    expect(newFeedResponse.events[0].eventID, "4a1e5163-53a1-4b1f-852a-a777628eaff8");
  }, timeout: Timeout.parse("10s"));
}

const eventsJsonString = r"""
{"count":4,"data":[{"id":"4a1e5163-53a1-4b1f-852a-a777628eaff8","str_id":"winter-yoga-camp-advanced-yoga-4a1e5163","name":"Winter Yoga Camp (Advanced Yoga)","description":"For more details please check the webpage.","image_url":"https://api.insti.app/static/upload/2d/08/2d086fe5-ea49-4d81-a488-d4abec09a4ed-IMG-20181211-WA0060.jpg_cgh5DJ8.jpg","start_time":"2018-12-17T18:15:00+05:30","end_time":"2018-12-19T20:15:00+05:30","all_day":false,"venues":[{"id":"62bddefc-0dec-4f93-9675-f67ce4adae32","name":"Yoga Room,  New SAC","short_name":"Yoga Room,  New SAC","lat":null,"lng":null}],"bodies":[{"id":"b6b5085e-bf80-48d2-9c06-f3ade31233f3","str_id":"yogastha","name":"Yogastha","short_description":"The wellness club","website_url":"http://iitbyogastha.in/","image_url":"https://api.insti.app/static/upload/edeaf30f-3ea.jpg","cover_url":null}],"interested_count":4,"going_count":6,"website_url":"http://iitbyogastha.in/events.html","weight":1499.090909090909,"user_ues":0},{"id":"17df8086-00f2-4654-bebd-be22be96b68e","str_id":"winter-yoga-camp-therapeutic-yoga-17df8086","name":"Winter Yoga Camp (Therapeutic Yoga)","description":"","image_url":"https://api.insti.app/static/upload/2d/08/2d086fe5-ea49-4d81-a488-d4abec09a4ed-IMG-20181211-WA0060.jpg_qhwBsKz.jpg","start_time":"2018-12-17T07:00:00+05:30","end_time":"2018-12-19T08:00:00+05:30","all_day":false,"venues":[{"id":"e8911eed-09a1-40d8-bfb4-f50e011ac296","name":" Yoga Room,  New SAC","short_name":" Yoga Room,  New SAC","lat":null,"lng":null}],"bodies":[{"id":"b6b5085e-bf80-48d2-9c06-f3ade31233f3","str_id":"yogastha","name":"Yogastha","short_description":"The wellness club","website_url":"http://iitbyogastha.in/","image_url":"https://api.insti.app/static/upload/edeaf30f-3ea.jpg","cover_url":null}],"interested_count":2,"going_count":4,"website_url":"http://iitbyogastha.in/events.html","weight":1389.090909090909,"user_ues":0},{"id":"9e26a3d4-dd36-48be-a8c1-dbcfca95b094","str_id":"engineers-conclave-9e26a3d4","name":"Engineers' Conclave","description":"A showcase of the best projects and research work being carried out by students and a chance to interact with like-minded people from various IITs!","image_url":"https://api.insti.app/static/upload/61/59/6159a61e-4309-4a3c-8fdd-0be325cf3123-48381268_2406039649423816_978909697723596800_o.jpg.jpg","start_time":"2018-12-18T10:00:00+05:30","end_time":"2018-12-18T13:30:00+05:30","all_day":false,"venues":[{"id":"be8afcf1-c7f7-4d71-aaf5-0154081974dd","name":"Lecture Hall Complex - 3","short_name":"Lec Hall 3","lat":"19.130780","lng":"72.917487"}],"bodies":[{"id":"81e05a1a-7fd1-45b5-84f6-074e52c0f085","str_id":"techiitb","name":"Tech@IITB","short_description":"Ideate. Innovate. Implement.","website_url":"https://www.tech-iitb.org/","image_url":"https://api.insti.app/static/upload/2c/d8/2cd8bf5c-eafb-409b-8a04-f62f94ccd58d-36278b17-561.jpg.jpg","cover_url":null}],"interested_count":8,"going_count":10,"website_url":"http://inter-iit.tech","weight":980.0,"user_ues":0},{"id":"8cacd694-49a8-49da-b3ec-aa580f7ddf22","str_id":"ground-station-workshop-8cacd694","name":"Ground Station Workshop","description":"Greetings,\nThe IIT Bombay Student Satellite Team, as a part of social goal is aiming to involve other engineering colleges in the project. Towards that aim, we are conducting a day-long Ground Station workshop, open for all engineering colleges, to make them well equipped to setup a ground station in their campus.This workshop will cover the technical details of design of antenna, its fabrication and manufacturing, radio handling and gathering, storing and analyzing the payload data. We will also talk about non-technical aspects like team formation, team management and gathering of funds.\n\nThis workshop is open to students of all engineering colleges across India. Please note the details:\nDate: 13th January 2019\nVenue: Student Satellite Lab, Aerospace Department, IIT Bombay\n\nInterested students/ teams should fill the following form by 20th December 11:59 PM: https://goo.gl/forms/5AID8NADwWlF3mvE2\n\nThis workshop is completely FREE of cost.\n\nPlease note that we will NOT be able to provide accommodation or travel arrangements. Further details will be communicated to those who apply. Hope to see an enthusiastic participation.","image_url":"https://api.insti.app/static/upload/e6/d7/e6d71a51-9574-463e-a093-2eb4898dae59-GS_Workshop_Poster_2018.jpg.jpg","start_time":"2019-01-13T09:00:00+05:30","end_time":"2019-01-13T17:00:00+05:30","all_day":false,"venues":[{"id":"cd0dc47f-5286-45cd-a17d-d1867df08f69","name":"Aerospace Engineering Department","short_name":"Aero engg","lat":null,"lng":null}],"bodies":[{"id":"d7223009-3fcf-4fde-afdc-764e26f84ca2","str_id":"advitiy","name":"Advitiy","short_description":"Student Satellite Project","website_url":"http://www.aero.iitb.ac.in/satlab/","image_url":"https://api.insti.app/static/upload/e13826fa-721.jpg","cover_url":null}],"interested_count":3,"going_count":24,"website_url":"https://goo.gl/forms/5AID8NADwWlF3mvE2","weight":476.315925103009,"user_ues":0}]}
""";