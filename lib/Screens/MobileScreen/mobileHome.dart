import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quantum/Screens/Constatnts/bigScreenConstants.dart';
import 'package:quantum/Screens/Constatnts/mobileContants.dart';

class mobileMainScreen extends StatefulWidget {
  const mobileMainScreen({Key? key}) : super(key: key);

  @override
  _mobileMainScreenState createState() => _mobileMainScreenState();
}

class _mobileMainScreenState extends State<mobileMainScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          // width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              TopImageAndText(context),
              SizedBox(height: 100,),
              ServicesOffered(context),
              SizedBox(height: 100,),
              info(context),
              SizedBox(height: 100,),
              SubscribeNow(context),
              SizedBox(height: 100,),
              AboutUsCard(context),
              SizedBox(height: 100,),
              VisitBlog(context),
              SizedBox(height: 100,),
              Projects(context),
              SizedBox(height: 100,),
              MeetTheTeam(),
              SizedBox(height: 100,),
              Careers(context),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }

  Container info(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.99,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("How We Do This ?",style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            color: Colors.redAccent,
          ),),
          SizedBox(height: 50,),
          InfoCard(img: 'research.png',info: 'Our research is based on quantum circuit simulators with integrated noise mitigators. We are working as a service company to provide our research to your systems with utmost consistency and reliability.',),
          SizedBox(height: 50,),
          InfoCard(img: 'consult.png', info: 'Our team is just an email away, for personal and professional consultants to guide towards quantum solutions and all the technical work it follows. We study, understand your product model and enable you with the most feasible developmental roadmap.'),
          SizedBox(height: 50,),
          InfoCard(img: 'design.png', info: 'We, with our design team, design and build the quantum solution and make it industry ready. Our expertise allows us to analyze, and hence deploy the customized design.'),
        ],
      ),
    );
  }
  Container MeetTheTeam() {
    return Container(
      child: Column(
        children: [
          Text("Meet Our Team",style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            color: Colors.redAccent,
          ),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(CupertinoIcons.back),
                onTap: (){
                  setState(() {
                    if(index>0)
                      index--;
                  });
                },
              ),
              IndexedStack(
                index: index,
                children: [
                  TeamCard(
                    img: 'prof.jpg',
                    Name: 'Dr. Rajagopal Nagarajan',
                    about: 'Rajagopal Nagarajan, a professor of quantum computing from Middlesex University, UK. He has worked in the premise of quantum with leading organisations in the world such as BT and Dwave.',
                  ),
                  TeamCard(
                    img: 'Raghav.jpeg',
                    Name: 'Raghav Gupta',
                    about: 'I am third year Student at Bennett University , pursuing bachelors in Computer Science Engineering. My interest lies in product thinking, Artificial Intelligence, Machine Learning, Internet Of things and user research but I dont mind banging lines of code to build stuff. I am driven by an irresistible urge to create things',
                  ),
                ],
              ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      if(index<1)
                        index++;
                      else index=0;
                    });
                  },
                  child: Icon(CupertinoIcons.right_chevron))
            ],
          )
        ],
      ),
    );
  }

  Container Projects(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Explore Our Projects",style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            color: Colors.redAccent,
          ),),
          SizedBox(height: 100,),
          Container(
            decoration: kBoxDecoration,
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Qtipi",style: kBigText,),
                SizedBox(height: 50,),
                Text("Quantum computing language developed by our core member",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 20,
                ),)
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            decoration: kBoxDecoration,
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OpenQ",style: kBigText,),
                SizedBox(height: 50,),
                Text(" An open-source quantum simulator which integrates a noise mitigator, thus helping to achieve an efficient, error-free and fault-tolerant quantum circuits model. It is currently under development and is about to be released for Beta"
                  ,textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container Careers(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.35,
      decoration: BoxDecoration(
        color: Color(0xFFF9F3F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Careers",style: kBigText.copyWith(fontSize: 35),),
                Text("If you want to fall into this entropy with us, let us know more about you",softWrap: true,style: kBigText.copyWith(
                    color: Colors.grey,
                    fontSize: 15
                ),),
              ],
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.1 ,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(child: Text("See Available Positions",style: kBigText.copyWith(fontSize: 20),)),
          )
        ],
      ),
    );
  }

  Container Languge_Description(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Qtpi- Language Description",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset('Assets/Images/computer.png',height: MediaQuery.of(context).size.height*0.3,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            "Qtpi is a simulator for a modified version of Gay and Nagarajan’s CQP (Communicating Quantum Processes, POPL 2005). Still under development, but already a capable tool.",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.025,
                              // color: Colors.white,
                              // color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            "Qtpi is a mixture of two notations: there’s a process language, based on the pi calculus with special steps to allow quantum bits (qubits) to be created (newq), put through gates (>>) and measured (-/-) — and, inherited from CQP, it mis-spells qubit as qbit.",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.025,
                              // color: Colors.white,
                            ),
                          ),
                        ),

                      ],
                    ),),
                ],
              ),
            );
  }

  Container VisitBlog(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.4,
      decoration: BoxDecoration(
        color: Color(0xFFF9F3F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Blog",style: kBigText.copyWith(fontSize: 35),),
                Text("Visit Our Blog and Stay Updated",style: kBigText.copyWith(
                    color: Colors.grey,
                    fontSize: 15
                ),),
              ],
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.1 ,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(child: Text("Visit",style: kBigText.copyWith(fontSize: 20),)),
          )
        ],
      ),
    );
  }

  Container AboutUsCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: AboutUs(context),),
        ],
      ),
    );
  }

  Container SubscribeNow(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.all(20),
      // height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        color: Color(0xFFF9F3F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Newsletter",style: kBigText.copyWith(fontSize: 35),),
                Text("Get new content delivered directly to your inbox.",style: kBigText.copyWith(
                    color: Colors.grey,
                    fontSize: 15
                ),),
              ],
            ),

          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextField())
        ],
      ),
    );
  }

  Center TopImageAndText(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Open-Q",
                    style: KMobileBigText,
                  ),
                  Text(
                    "One Stop Destination To Learn, Create and Develop",
                    style: KMobileBigText.copyWith(
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              'Assets/Images/person.png',
              height: MediaQuery.of(context).size.height * 0.4,
            )
          ],
        ),
      ),
    );
  }


  Column AboutOpenQ(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1279BE),
          ),
          child: Center(
            child: Text(
              "One-Stop destination-to learn, create and develop!",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                // color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "Qtpi- Language Description",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.08,
              // color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          // height: MediaQuery.of(context).size.height*0.1,
          child: Text(
            "Qtpi is a simulator for a modified version of Gay and Nagarajan’s CQP (Communicating Quantum Processes, POPL 2005). Still under development, but already a capable tool.",
            softWrap: true,
            style: TextStyle(fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          // height: MediaQuery.of(context).size.height*0.1,
          child: Text(
            "Qtpi is a mixture of two notations: there’s a process language, based on the pi calculus with special steps to allow quantum bits (qubits) to be created (newq), put through gates (>>) and measured (-/-) — and, inherited from CQP, it mis-spells qubit as qbit.",
            softWrap: true,
            style: TextStyle(fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Column TopText(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Open-Q",
            style: kBigText.copyWith(
              fontSize: MediaQuery.of(context).size.height * 0.15,
            ),
          ),
        ),
        Center(
          child: Text(
            "One-Stop destination-to learn, create and develop!",
            style: kBigText.copyWith(
                fontSize: MediaQuery.of(context).size.height * 0.05),
          ),
        ),
      ],
    );
  }

  Column AboutUs(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Us",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            color: Colors.redAccent,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Text(
            "Advances in quantum computing are required now, more than ever. We aim to deploy a model that acts as an efficient bridge between the user and the existing/developing quantum cloud platforms available worldwide. The Open-Q platform aims to give results with lowest error-rates via rapid optimization by embedding a language developed by our very own advisory.",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              // color: Colors.white,
              // color: Colors.white
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Text(
            "Stay tuned for this simulator to be live, so that you get to unlearn about the existing complex quantum simulators in the market to avail a provision of an error-free, approachable and one-destination platform.",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              // color: Colors.white,
            ),
          ),
        ),
        // SizedBox(
        //   height: 15,
        // ),
        // Container(
        //   width: MediaQuery.of(context).size.width * 0.6,
        //   child: Text(
        //     "Furthermore, we have a provision of paid services to companies involved in quantum computing, related to hardware and software needs. Our talented team consists of quantum professionals from all walks of life and world, to provide companies with what they seek!",
        //     style: TextStyle(
        //       fontSize: MediaQuery.of(context).size.height * 0.025,
        //       // color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Container ServicesOffered(BuildContext context) {
    return Container(
        child:Column(
          children: [
            Text("Services We Offer",style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              color: Colors.redAccent,
            ),),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(
                  img: 'quantum-computing.png',
                  name: 'Quantum Computing Services',
                ),
                ServiceCard(
                  img: 'solutions.png',
                  name: 'Quantum Solutions',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(
                  img: 'writing.png',
                  name: 'Technical Quantum Writing',
                ),
                ServiceCard(
                  img: 'cryptography.png',
                  name: 'Quantum Cryptography models',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ServiceCard(
              img: 'Algo.png',
              name: 'Quantum Computing Algorithms',
            ),
          ],
        )
    );
  }
}

class ServiceCard extends StatelessWidget {
  ServiceCard({required this.img,required this.name});
  String name , img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecoration,
      width: MediaQuery.of(context).size.width*0.42,
      height: MediaQuery.of(context).size.height*0.28 ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('Assets/Images/'+img,height:MediaQuery.of(context).size.height*0.15 ,),
          Text(name,style: kBigText.copyWith(fontSize: 18),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  InfoCard({required this.img,required this.info});
  String img,info;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('Assets/Images/'+img,height:MediaQuery.of(context).size.height*0.08 ,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          child: Text(info
            ,softWrap: true,style: TextStyle(
                fontSize: 15
            ),
          ),
        )
      ],
    );
  }
}
class TeamCard extends StatelessWidget {
  TeamCard({required this.img,required this.Name,required this.about});
  String Name,about,img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.6,
      decoration: kBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'Assets/Images/'+img,
            height: MediaQuery.of(context).size.height*0.20,
          ),
          Container(
            width:MediaQuery.of(context).size.width*0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(child: Text(Name,style: kBigText.copyWith(fontSize: 20),)),
                Text(about,softWrap: true,textAlign: TextAlign.center,)
              ],
            ),
          )
        ],
      ),
    );
  }
}