import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    final List<Map<String, dynamic>> recentUpdates = [
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Rohit", "time": "10:12 AM"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Rahul", "time": "Yesterday"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Krish Bhaiya", "time": "11:15 AM"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Rakshit", "time": "25 minutes ago"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Gagan", "time": "Yesterday"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Himanshu", "time": "9:05 AM"},
      {"image": "assets/imageassets/neil_verma.jpg", "name": "Rajat", "time": "Yesterday"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Updates",
                          style: GoogleFonts.roboto(
                            fontSize: height * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search, color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert, color: Colors.black),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Status",
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:AssetImage("assets/imageassets/neil_verma.jpg"),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.green,
                              child:Icon(Icons.add, color: Colors.white, size: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add status",
                            style: GoogleFonts.roboto(
                              fontSize: height * 0.023,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Disappears after 24 hours",
                            style: GoogleFonts.roboto(
                              fontSize: height * 0.018,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  Text(
                    "Recent updates",
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 18),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recentUpdates.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      final item = recentUpdates[index];

                      return InkWell(onTap: () {},
                        radius: 60,
                        child:Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green, width:3),
                              ),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(item["image"]),
                              ),
                            ),

                            const SizedBox(width: 15),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"],
                                  style: GoogleFonts.roboto(
                                    fontSize: height * 0.022,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  item["time"],
                                  style: GoogleFonts.roboto(
                                    fontSize: height * 0.018,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),);
                    },
                  ),
                ],
              ),
            ),
          ),Positioned(bottom:20,right:20,
              child:
              Column(
                children:
                [InkWell(
                  onTap: (){
                    print("Namaste");
                  },child:
                Container(height: 50,width: 50,decoration: BoxDecoration(
                  color: Color(0xFF20272B),borderRadius: BorderRadius.circular(12)
                ),
                  child: Icon(Icons.edit,color: Colors.white,),
                ),
                ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      print("Bolda kyu nhi ae singhhh Waheee Guruu ji daa Khaalsaa Waheee Guruu ji dii Watehh");
                    },
                    child: Container(height:60, width: 60,
                      child: Icon(Icons.camera_alt
                        ,color: Colors.white,size: 30,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15) ,color: Color(0xFF21C063)
                      ),),
                  )

                ],))],
        ),
      ),
    );
  }
}
