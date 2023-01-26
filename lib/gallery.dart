import 'package:flutter/material.dart';
import 'NavBar.dart';
class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class RouteOne extends StatelessWidget {
  final List<PhotoItem> _items = [
    PhotoItem(
        "https://grzyby.pl/foto/01/010902-34.jpg",
        "Stephan Seeber"),
    PhotoItem(
        "https://ocdn.eu/pulscms-transforms/1/Puak9kpTURBXy84YWVmNmQ4MDYzZjRlZDhiZTZkZjZmNDQ4ZGUzN2NiMC5qcGeSlQMAzGrNA-jNAjOTBc0DAs0BkN4AAaEwBQ",
        "Liam Gant"),
    PhotoItem(
        "https://grzyby.pl/foto/01/010902-34.jpg",
        "Stephan Seeber"),
    PhotoItem(
        "https://ocdn.eu/pulscms-transforms/1/Puak9kpTURBXy84YWVmNmQ4MDYzZjRlZDhiZTZkZjZmNDQ4ZGUzN2NiMC5qcGeSlQMAzGrNA-jNAjOTBc0DAs0BkN4AAaEwBQ",
        "Pixabay"),
    PhotoItem(
        "https://zasoby.ekologia.pl/artykulyNew/20508/xxl/shutterstock-1418450570_800x600.jpg",
        "Scott Webb"),
    PhotoItem(
        "https://bi.im-g.pl/im/3e/87/16/z23622462IER,Kania--czubajka-kania--to-gatunek-grzybow-zaliczan.jpg",
        "Krivec Ales"),
    PhotoItem(
        "https://zasoby.ekologia.pl/artykulyNew/20508/xxl/shutterstock-1418450570_800x600.jpg",
        "Pixabay"),
    PhotoItem(
        "https://bi.im-g.pl/im/3e/87/16/z23622462IER,Kania--czubajka-kania--to-gatunek-grzybow-zaliczan.jpg",
        "Melanie Wupper"),
    PhotoItem(
        "https://grzyby.pl/foto/01/010902-34.jpg",
        "Stephan Seeber"),
    PhotoItem(
        "https://ocdn.eu/pulscms-transforms/1/Puak9kpTURBXy84YWVmNmQ4MDYzZjRlZDhiZTZkZjZmNDQ4ZGUzN2NiMC5qcGeSlQMAzGrNA-jNAjOTBc0DAs0BkN4AAaEwBQ",
        "Liam Gant"),
    PhotoItem(
        "https://grzyby.pl/foto/01/010902-34.jpg",
        "Stephan Seeber"),
    PhotoItem(
        "https://ocdn.eu/pulscms-transforms/1/Puak9kpTURBXy84YWVmNmQ4MDYzZjRlZDhiZTZkZjZmNDQ4ZGUzN2NiMC5qcGeSlQMAzGrNA-jNAjOTBc0DAs0BkN4AAaEwBQ",
        "Pixabay"),
    PhotoItem(
        "https://zasoby.ekologia.pl/artykulyNew/20508/xxl/shutterstock-1418450570_800x600.jpg",
        "Scott Webb"),
    PhotoItem(
        "https://bi.im-g.pl/im/3e/87/16/z23622462IER,Kania--czubajka-kania--to-gatunek-grzybow-zaliczan.jpg",
        "Krivec Ales"),
    PhotoItem(
        "https://zasoby.ekologia.pl/artykulyNew/20508/xxl/shutterstock-1418450570_800x600.jpg",
        "Pixabay"),
    PhotoItem(
        "https://bi.im-g.pl/im/3e/87/16/z23622462IER,Kania--czubajka-kania--to-gatunek-grzybow-zaliczan.jpg",
        "Melanie Wupper"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
    centerTitle: true, 
    title: const Text('Galeria'),
  ),
  drawer: NavBar(),
  backgroundColor: Color.fromARGB(255, 33, 31, 31),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteTwo(
                      image: _items[index].image),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_items[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RouteTwo extends StatelessWidget {
  final String image;


  RouteTwo({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 31, 31),
       elevation: 0,
       centerTitle: true, 
      ),
       backgroundColor: Color.fromARGB(255, 33, 31, 31),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}