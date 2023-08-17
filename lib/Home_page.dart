import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController _pageController = PageController(viewportFraction: 1);
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

     body: SafeArea(
       child: Padding(
         padding: EdgeInsets.only(top:30.0,left: 35.0,right:35.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image(image: AssetImage('assets/images/suvaye.jpg'),
                 height: 40, width: 40,
                 ),
                 SizedBox(width: 15,),
                 Text('Suvaye',
                 style: TextStyle(
                   fontSize: 28
                 ),),
                 SizedBox(width: 138,),
                 Image(image: AssetImage('assets/images/bell.jpg'),
                   height: 40,
                   width: 40,
                         ),
         ],
             ),
             const SizedBox(height: 24,),
             SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   //Hello suavye tech
                   const Text('Hello, Suvaye Tech',
                     style: TextStyle(fontSize: 22),
                   ),
                   SizedBox(height: 40,),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Services',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.w600,
                       ),),
                     SizedBox(width: 130,),
                     Text('See more',
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w600,
                         color: Color(0xFF027A48),
                       ),
                     ),
                     Icon(
                       Icons.keyboard_arrow_right_outlined,
                       color: Colors.green.shade600,
                       size: 28,
                     ),
                   ],
                 ),
                    SizedBox(height: 16),
                   Container(
                     margin: const EdgeInsets.symmetric(vertical: 16.0),
                     height: 130,
                     width: 450,
                     decoration:  BoxDecoration(
                       color: Color(0xFFECFDF3),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: PageView.builder(
                       controller: _pageController,
                         itemCount: 3,
                         itemBuilder: (context, index){
                           return Center(
                             child: Container(
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'App Development',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Develop beautiful fast mobile \napplications',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ]
                              ),
                             ),
                           );
                         }),
                   ),
                   SizedBox(height: 1,),
                   Center(
                     child: SmoothPageIndicator(
                       controller: _pageController,
                         count: 3,
                         effect: WormEffect(
                           activeDotColor: Colors.green.shade800,
                           dotHeight: 8,
                           dotWidth: 8,
                         ),

                     ),
                   ),
                   SizedBox(height: 39),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text('Outline',
                           style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.w600,
                           ),),
                         SizedBox(width: 145,),
                         Text('See more',
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w600,
                             color: Color(0xFF027A48),
                           ),
                         ),
                         Icon(
                           Icons.keyboard_arrow_right_outlined,
                           color: Colors.green.shade600,
                           size: 28,
                         ),
                       ]
                   ),
                 ],
               ),
             ),
             SizedBox(height: 8,),
             Container(
               height:300,
               child: Padding(
                 padding: EdgeInsets.only(top:8.0),
                 child: GridView(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: 15,
                     crossAxisSpacing: 15,
                     childAspectRatio: 2.65,
                   ),
                   children: [
                      Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFFF9F5FF),
                       ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.mobile_screen_share_outlined),
                              SizedBox(width: 10,),
                              Text('Apps',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFFFDF2FA)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Icon(Icons.web_outlined),
                             SizedBox(width: 10,),
                             Text('Websites',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFFFFFAF5),),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Icon(Icons.design_services_rounded),
                             SizedBox(width: 10,),
                             Text('Design',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFFF0F9FF)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Icon(Icons.people_sharp),
                             SizedBox(width: 10,),
                             Text('Consultant',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,
            vertical: 7),
            child: GNav(
              tabBackgroundColor: Colors.grey.shade300,
              gap:10,
              padding: EdgeInsets.all(25),
              tabs: const [
                GButton(icon: Icons.home,
                text: 'Home',
                ),
                GButton(icon: Icons.grid_view,
                    text: 'Services'),
                GButton(icon: Icons.search,text: 'Search',),
                GButton(icon: Icons.chat_bubble_outline,
                    text: 'Chats'),
              ],
            ),
          ),
        )
    );
  }
}
