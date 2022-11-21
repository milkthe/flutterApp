import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Twitter",
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Twitter());
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://www.whiteflowerfarm.com/mas_assets/cache/image/6/3/0/0/25344.Jpg',
      postText:
          'ฉันชื่อ น.ส.ฐิตาภรณ์ ประสิทธิ์สม\nชื่อเล่น มิลค์\nอายุ 22 ปี\nวัน/เดือน/ปีเกิด: 29/10/2543\nการศึกษา: คณะวิศวกรรมศาสตร์ สาขาวิชาวิศวกรรมคอมพิวเตอร์และหุ่นยนต์ มหาวิทยาลัยกรุงเทพ',
      name: "Milk.the",
      account: "@milk_kpop",
      photo_intro: '',
    ),
    Tweet(
      avatar_url:
          'https://pbs.twimg.com/media/FiDovQzacAIPJ0t?format=jpg&name=large',
      postText: '',
      name: "Milk.leeminho",
      account: "@milk_01",
      photo_intro:
          'https://pbs.twimg.com/media/FiDovQzakAESPhx?format=jpg&name=large',
    ),
    Tweet(
      avatar_url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs8R1j_43NjA2Fabw9sTeJn_uVopunOuotSLwDfBTjAbxvG6SGghdrgJ-NPaQSL7LSGTo&usqp=CAU',
      postText: 'ดอกไม้ที่ชอบ: ดอกโบตั๋น(Peony)',
      name: "yejinhand",
      account: "@milk_02",
      photo_intro:
          'https://www.sweetflower.co.th/content/images/2020/02/peony_holland--1-of-5-.jpg',
    ),
    Tweet(
      avatar_url:
          'https://yt3.ggpht.com/v_TNyv9ipl19Eoh1WgNljEw0NtGXQfDbA-xchARwL3WsJ1TM-ivOtE4F4glwNR-oqBiTGPqE7w=s900-c-k-c0x00ffffff-no-rj',
      postText: 'งานอดิเรก: วาดรูป',
      name: "binhand",
      account: "@milk_925",
      photo_intro:
          'https://pbs.twimg.com/media/FiDwnFoaEAA4JYR?format=jpg&name=large',
    ),
    Tweet(
      avatar_url:
          'https://upload.wikimedia.org/wikipedia/en/6/64/Crash_Landing_on_You_main_poster.jpg',
      postText: 'ซีรีย์ที่ชอบ: Crash landing on you',
      name: "luv_22",
      account: "@milk_22",
      photo_intro:
          'https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/crash_landing_on_you_poster_main.jpg',
    ),
    Tweet(
      avatar_url:
          'https://q-xx.bstatic.com/xdata/images/hotel/840x460/78809294.jpg?k=cf850d507a9671cf7ff85d598435ea329a28cd4f1b1abc25c1892c91156d36ad&o=',
      postText: 'คติประจำใจ: พยายามทำเต็มที่ให้ดีที่สุด เพื่ออนาคตข้างหน้า',
      name: "milkhand",
      account: "@milk_29",
      photo_intro: '',
    ),
    Tweet(
      avatar_url:
          'https://pbs.twimg.com/media/Fh5akGuacAAZ2Li?format=jpg&name=large',
      postText: 'ผลงาน: Design Robot ด้วย Solidwork',
      name: "milk_01",
      account: "@milk.the1",
      photo_intro:
          'https://pbs.twimg.com/media/FiEDm8PagAAwOUM?format=jpg&name=large',
    ),
    Tweet(
      avatar_url:
          'https://assets.wego.com/image/upload/v1611848131/country-pages/kr.jpg',
      postText: 'ผลงาน: Design Web',
      name: "milk_02",
      account: "@milk.the2",
      photo_intro:
          'https://pbs.twimg.com/media/FiEEGL_acAAvT55?format=jpg&name=medium',
    ),
    Tweet(
      avatar_url:
          'https://pbs.twimg.com/media/FhsBcSbagAAyPYB?format=jpg&name=large',
      postText: 'ผลงาน: Design App',
      name: "milk_03",
      account: "@milk.the3",
      photo_intro:
          'https://pbs.twimg.com/media/FiEBIbgagAASb3J?format=jpg&name=medium',
    ),
    Tweet(
      avatar_url:
          'https://static.wixstatic.com/media/78aa83_68b22bb694a54a7b8bb5819456c8df69~mv2.jpg/v1/fill/w_640,h_750,al_l,q_85,usm_0.66_1.00_0.01,enc_auto/78aa83_68b22bb694a54a7b8bb5819456c8df69~mv2.jpg',
      postText: 'ผลงาน: Design post twitter',
      name: "milk_04",
      account: "@milk.the4",
      photo_intro:
          'https://pbs.twimg.com/media/FiES3LsaEAABwmb?format=jpg&name=medium',
    ),
  ];

  var tweetShow = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/FiDovQzacAIPJ0t?format=jpg&name=large'),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_off_outlined, Colors.blue),
            buildIconButton(Icons.notifications_outlined, Colors.blue),
            buildIconButton(Icons.email_outlined, Colors.blue)
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetShow.insert(0, tweetList[counter]);
            counter++;
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetShow[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetShow.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}
