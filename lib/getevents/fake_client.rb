class Getevents::FakeClient
  def get(url=nil, params=nil, headers=nil, &block)
    OpenStruct.new(body: fake_payload.to_json)
  end

  private

  def fake_payload
    JSON.parse('{
      "events": [
        {
          "id": "55fcb8b371427c214c744220",
          "crawler_meta": {
            "presentable": "seatgeek.com",
            "name": "seatgeek"
          },
          "name": "Akon",
          "end_date": "2015-09-23T23:00:00.000Z",
          "url": "https://getevents.co/events/preview/55fcb8b371427c214c744220",
          "language_meta": "en",
          "source_name": "seatgeek.com",
          "image_small_url": "",
          "start_date": "2015-09-23T20:00:00.000Z",
          "image_large_url": "https://chairnerd.global.ssl.fastly.net/images/performers-landscape/akon-32de4d/152/huge.jpg",
          "description": "",
          "account_id": "53d2517aeecb6ced157c7f1a",
          "images_meta": [
            {
              "desktop": {
                "size": 40492,
                "height": 768,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/akon__petit_olympia__seatgeek_com_1_desktop.jpeg"
              },
              "tablet": {
                "size": 17193,
                "height": 360,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/akon__petit_olympia__seatgeek_com_1_tablet.jpeg"
              },
              "mobile": {
                "size": 9857,
                "height": 240,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/akon__petit_olympia__seatgeek_com_1_mobile.jpeg"
              }
            }
          ],
          "category_meta": [
            {
              "label": "Arts & Culture",
              "probability": 1
            },
            {
              "label": "Music",
              "probability": 1
            }
          ],
          "dates": {
            "updated": "2015-09-19T01:21:55.537Z",
            "created": "2015-09-19T01:21:55.534Z"
          },
          "contact": {
            "name": "",
            "url": "",
            "twitter": "",
            "telephone": "",
            "fb": "",
            "address": "",
            "email": ""
          },
          "venue_meta": {
            "geo": [
              -73.56403155339802,
              45.51693731477616
            ],
            "_id": "5573eeb4d215c99852ca6337",
            "name": "Petit Olympia",
            "location": {
              "lng": -73.56403155339802,
              "lat": 45.51693731477616,
              "address": "1282 Amherst",
              "formattedAddress": [
                "1282 Amherst",
                "Montreal QC",
                "Canada"
              ],
              "state": "QC",
              "country": "Canada",
              "cc": "CA",
              "city": "Montreal"
            },
            "categories": [
              "Concert Hall"
            ],
            "photos": []
          },
          "venue": {
            "venue_id": "5466539c736c73fb208e6056",
            "name": "Petit Olympia",
            "address": {
              "country": "Canada",
              "zip": "H2L 2G2",
              "street": "1282 Amherst",
              "city": "Montreal"
            },
            "lng": -73.5563,
            "lat": 45.5171
          },
          "keywords": [],
          "start_day": 20150923,
          "end_day": 20150923,
          "event_score": 549,
          "city_meta": {
            "city": "Montréal",
            "region": "Montreal",
            "lat": 45.50884,
            "lng": -73.58781,
            "country_code": "CA",
            "timezone": "America/Montreal",
            "geo": [
              -73.58781,
              45.50884
            ],
            "area": "Quebec",
            "area_code": 10,
            "country": "Canada",
            "continent": "North America",
            "continent_code": "NA"
          }
        },
        {
          "id": "55fc7e6371427c214c73ec2d",
          "crawler_meta": {
            "presentable": "seatgeek.com",
            "name": "seatgeek"
          },
          "name": "Alcest with Emma Ruth Rundle",
          "end_date": "2015-09-23T23:00:00.000Z",
          "url": "https://getevents.co/events/preview/55fc7e6371427c214c73ec2d",
          "language_meta": "en",
          "source_name": "seatgeek.com",
          "image_small_url": "",
          "start_date": "2015-09-23T20:00:00.000Z",
          "image_large_url": "",
          "description": "",
          "account_id": "53d2517aeecb6ced157c7f1a",
          "images_meta": [
            {
              "desktop": {
                "size": 53972,
                "height": 1365,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_1_desktop.jpeg"
              },
              "tablet": {
                "size": 21351,
                "height": 640,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_1_tablet.jpeg"
              },
              "mobile": {
                "size": 10777,
                "height": 426,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_1_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 107474,
                "height": 1365,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_2_desktop.jpeg"
              },
              "tablet": {
                "size": 26530,
                "height": 640,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_2_tablet.jpeg"
              },
              "mobile": {
                "size": 13908,
                "height": 426,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_2_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 58964,
                "height": 1820,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_3_desktop.jpeg"
              },
              "tablet": {
                "size": 20814,
                "height": 853,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_3_tablet.jpeg"
              },
              "mobile": {
                "size": 10388,
                "height": 568,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_3_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 80498,
                "height": 1024,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_4_desktop.jpeg"
              },
              "tablet": {
                "size": 45003,
                "height": 480,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_4_tablet.jpeg"
              },
              "mobile": {
                "size": 20698,
                "height": 320,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/alcest_with_emma_ruth_rundle__lalize__seatgeek_com_4_mobile.jpeg"
              }
            }
          ],
          "category_meta": [
            {
              "label": "Arts & Culture",
              "probability": 1
            },
            {
              "label": "Music",
              "probability": 1
            }
          ],
          "dates": {
            "updated": "2015-09-18T21:13:07.170Z",
            "created": "2015-09-18T21:13:07.167Z"
          },
          "contact": {
            "name": "",
            "url": "",
            "twitter": "",
            "telephone": "",
            "fb": "",
            "address": "",
            "email": ""
          },
          "venue_meta": {
            "geo": [
              -73.563626,
              45.518949
            ],
            "name": "L\'Alizé",
            "contact": {
              "facebook": "",
              "twitter": "",
              "phone": "5148078895"
            },
            "location": {
              "lng": -73.563626,
              "lat": 45.518949,
              "address": "900 rue Ontario Est",
              "crossStreet": "coin Saint-André",
              "formattedAddress": [
                "900 rue Ontario Est (coin Saint-André)",
                "Montreal QC H2L 1P2",
                "Canada"
              ],
              "state": "QC",
              "postalCode": "H2L 1P2",
              "country": "Canada",
              "cc": "CA",
              "city": "Montreal"
            },
            "_id": "552fd1ce630377801e791d5b",
            "categories": [
              "Concert Hall"
            ],
            "photos": [
              "https://irs1.4sqi.net/img/general/width540/TUTMP4m93Vi3IIeUOwlD4YJUpZunVCwO1a6mWqlcvFc.jpg",
              "https://irs0.4sqi.net/img/general/width1440/16410067_RIXycT05OkrEckWzcCZ9osFL3pLLKLB51rqWnOWvbyQ.jpg",
              "https://irs1.4sqi.net/img/general/width540/93162359_vfGYCsDmOFG6khsHHPg1uZBKvfa5B_OWN5QVjped7y8.jpg",
              "https://irs3.4sqi.net/img/general/width640/32995711_voyJCWKr7tFpulinl2mgRUxlWXhT3xw7otosn5mpT_w.jpg",
              "https://irs0.4sqi.net/img/general/width720/6284528_WpL0fbFawk7pBKCaH-z9EdKjEIShymN0hVdUeA4w3Vw.jpg",
              "https://irs3.4sqi.net/img/general/width612/2378096_v2HbpnCZAhkjc--FzI7aTamw3DfARuJrFB4IcnPbbtY.jpg"
            ]
          },
          "venue": {
            "venue_id": "5534b8d6f78dfc517a49c610",
            "name": "L\'Alize",
            "address": {
              "country": "Canada",
              "zip": "H2L 2P4",
              "street": "900 Ontario Est",
              "city": "Montreal"
            },
            "lng": -73.5636,
            "lat": 45.519
          },
          "keywords": [],
          "start_day": 20150923,
          "end_day": 20150923,
          "event_score": 520,
          "city_meta": {
            "city": "Montréal",
            "region": "Montreal",
            "lat": 45.50884,
            "lng": -73.58781,
            "country_code": "CA",
            "timezone": "America/Montreal",
            "geo": [
              -73.58781,
              45.50884
            ],
            "area": "Quebec",
            "area_code": 10,
            "country": "Canada",
            "continent": "North America",
            "continent_code": "NA"
          }
        },
        {
          "id": "55b62d0682f8b1374306ead1",
          "crawler_meta": {
            "presentable": "last.fm",
            "name": "lastfm"
          },
          "name": "Alcest",
          "end_date": "2015-09-23T23:59:00.000Z",
          "url": "https://getevents.co/events/preview/55b62d0682f8b1374306ead1",
          "language_meta": "ce",
          "source_name": "last.fm",
          "image_small_url": "http://userserve-ak.last.fm/serve/64s/62765771.png",
          "start_date": "2015-09-23T00:00:00.000Z",
          "image_large_url": "http://userserve-ak.last.fm/serve/252/62765771.png",
          "description": "",
          "account_id": "53d2517aeecb6ced157c7f1a",
          "images_meta": [
            {
              "desktop": {
                "size": 47010,
                "height": 1361,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/df161af4-344e-11e5-a859-025e5895c47a_desktop.jpeg"
              },
              "tablet": {
                "size": 16732,
                "height": 638,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/df161af4-344e-11e5-a859-025e5895c47a_tablet.jpeg"
              },
              "mobile": {
                "size": 9844,
                "height": 425,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/df161af4-344e-11e5-a859-025e5895c47a_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 53972,
                "height": 1365,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e2e0c5bc-344e-11e5-a859-025e5895c47a_desktop.jpeg"
              },
              "tablet": {
                "size": 21351,
                "height": 640,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e2e0c5bc-344e-11e5-a859-025e5895c47a_tablet.jpeg"
              },
              "mobile": {
                "size": 10777,
                "height": 426,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e2e0c5bc-344e-11e5-a859-025e5895c47a_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 107474,
                "height": 1365,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e673738c-344e-11e5-a859-025e5895c47a_desktop.jpeg"
              },
              "tablet": {
                "size": 26530,
                "height": 640,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e673738c-344e-11e5-a859-025e5895c47a_tablet.jpeg"
              },
              "mobile": {
                "size": 13908,
                "height": 426,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/e673738c-344e-11e5-a859-025e5895c47a_mobile.jpeg"
              }
            },
            {
              "desktop": {
                "size": 58964,
                "height": 1820,
                "width": 1024,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/eba69604-344e-11e5-a859-025e5895c47a_desktop.jpeg"
              },
              "tablet": {
                "size": 20814,
                "height": 853,
                "width": 480,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/eba69604-344e-11e5-a859-025e5895c47a_tablet.jpeg"
              },
              "mobile": {
                "size": 10388,
                "height": 568,
                "width": 320,
                "url": "https://s3-eu-west-1.amazonaws.com/getevents-data-images/eba69604-344e-11e5-a859-025e5895c47a_mobile.jpeg"
              }
            }
          ],
          "category_meta": [],
          "dates": {
            "updated": "2015-07-27T13:07:18.348Z",
            "created": "2015-07-27T13:07:18.346Z"
          },
          "contact": {
            "name": "",
            "url": "",
            "twitter": "",
            "telephone": "",
            "fb": "",
            "address": "",
            "email": ""
          },
          "venue_meta": {
            "geo": [
              -73.563626,
              45.518949
            ],
            "name": "L\'Alizé",
            "contact": {
              "facebook": "",
              "twitter": "",
              "phone": "5148078895"
            },
            "location": {
              "lng": -73.563626,
              "lat": 45.518949,
              "address": "900 rue Ontario Est",
              "crossStreet": "coin Saint-André",
              "formattedAddress": [
                "900 rue Ontario Est (coin Saint-André)",
                "Montreal QC H2L 1P2",
                "Canada"
              ],
              "state": "QC",
              "postalCode": "H2L 1P2",
              "country": "Canada",
              "cc": "CA",
              "city": "Montreal"
            },
            "_id": "552fd1ce630377801e791d5b",
            "categories": [
              "Concert Hall"
            ],
            "photos": [
              "https://irs1.4sqi.net/img/general/width540/TUTMP4m93Vi3IIeUOwlD4YJUpZunVCwO1a6mWqlcvFc.jpg",
              "https://irs0.4sqi.net/img/general/width1440/16410067_RIXycT05OkrEckWzcCZ9osFL3pLLKLB51rqWnOWvbyQ.jpg",
              "https://irs1.4sqi.net/img/general/width540/93162359_vfGYCsDmOFG6khsHHPg1uZBKvfa5B_OWN5QVjped7y8.jpg",
              "https://irs3.4sqi.net/img/general/width640/32995711_voyJCWKr7tFpulinl2mgRUxlWXhT3xw7otosn5mpT_w.jpg",
              "https://irs0.4sqi.net/img/general/width720/6284528_WpL0fbFawk7pBKCaH-z9EdKjEIShymN0hVdUeA4w3Vw.jpg",
              "https://irs3.4sqi.net/img/general/width612/2378096_v2HbpnCZAhkjc--FzI7aTamw3DfARuJrFB4IcnPbbtY.jpg"
            ]
          },
          "venue": {
            "venue_id": "55350af4f78dfc517a4b9e88",
            "name": "L\'Alizé",
            "address": {
              "country": "Canada",
              "zip": "QC H2L 1P2",
              "street": "900, rue Ontario Est",
              "city": "Montreal"
            },
            "lng": -73.563572,
            "lat": 45.519096
          },
          "keywords": [],
          "start_day": 20150923,
          "end_day": 20150923,
          "event_score": 459,
          "city_meta": {
            "city": "Montréal",
            "region": "Montreal",
            "lat": 45.50884,
            "lng": -73.58781,
            "country_code": "CA",
            "timezone": "America/Montreal",
            "geo": [
              -73.58781,
              45.50884
            ],
            "area": "Quebec",
            "area_code": 10,
            "country": "Canada",
            "continent": "North America",
            "continent_code": "NA"
          }
        }
      ],
      "total": 324,
      "categories": [
        "Arts & Culture",
        "Businesses & Industry",
        "Music",
        "Entertainment",
        "Museums & Exhibits",
        "Sports",
        "Movements & Ideologies",
        "Soccer",
        "Live Shows",
        "Religion & Spirituality",
        "Health & Medicine",
        "Charity & Non-Profits",
        "Science & Technology",
        "Dance & Theatre",
        "Family & Children",
        "Nightlife",
        "Beauty & Fashion",
        "Tennis",
        "Baseball",
        "Swimming & Water Sports",
        "Food & Drink",
        "Running & Walking",
        "Film",
        "Cycling",
        "LGBT",
        "Fighting & Martial Arts",
        "Fitness",
        "Yoga",
        "Golf",
        "Football",
        "Politics",
        "Pop Culture",
        "Attractions & Local",
        "Literature",
        "Basketball"
      ],
      "adverts": [],
      "links": {
        "self": "http://api.getevents.co/event?lat=45.5017&lng=-73.58781&limit=3"
      }
    },
    "cities": []')
  end
end
