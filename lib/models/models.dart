class Gallery {

  final int id;
  final String pictureName;
  final String mainPicture;
  final List<String> subPicture;


  Gallery({
    required this.id,
    required this.pictureName,
    required this.mainPicture,
    required this.subPicture,
});

}

List<Gallery> gallery = <Gallery>[

  Gallery(id: 0, pictureName: 'Qutab Minar', mainPicture: 'i1.jpg', subPicture: ['i1.jpg','qu1.jpg','qu2.jpg','qu3.jpg']),
  Gallery(id: 1, pictureName: 'The Beaches of Goa', mainPicture: 'goa.jpg', subPicture: ['goa.jpg','g1.jpg','g2.jpg','g3.jpg']),
  Gallery(id: 2, pictureName: 'India Gate', mainPicture: 'gate.jpg', subPicture: ['gate.jpg','gate1.jpg','gate2.jpg','gate3.jpg']),
  Gallery(id: 3, pictureName: 'The Ellora Caves', mainPicture: 'ellora.jpg', subPicture: ['ellora.jpg','e1.jpg','e2.jpg','e3.jpg']),
  Gallery(id: 4, pictureName: 'Mysore Palace', mainPicture: 'mysore.jpg', subPicture: ['mysore.jpg','my1.jpg','my2.jpg','my3.jpg']),
  Gallery(id: 5, pictureName: 'Mahabodhi Temple', mainPicture: 'mahabodhi.jpg', subPicture: ['mahabodhi.jpg','maha1.jpg','maha2.jpg','maha3.jpg']),
  Gallery(id: 6, pictureName: 'Taj Mahal', mainPicture: 'taj.jpg', subPicture:['taj.jpg','taj1.jpg','taj2.jpg','taj3.jpg']),
  Gallery(id: 7, pictureName: 'Ranthambore National Park', mainPicture: 'ranth.jpg', subPicture: ['ranth.jpg','r1.jpg','r2.jpg','r3.jpg']),
  Gallery(id: 8, pictureName: 'Jal Mahal', mainPicture: 'jal.jpg', subPicture: ['jal.jpg','jal1.jpg','jal2.jpg','jal3.jpg']),
  Gallery(id: 9, pictureName: 'Lotus Temple', mainPicture: 'lotus.jpg', subPicture: ['lotus.jpg','l1.jpg','l2.jpg','l3.jpg']),
  Gallery(id: 10, pictureName: 'Akshardham', mainPicture: 'akshar.jpg', subPicture: ['akshar.jpg','a1.jpg','a2.jpg','a3.jpg']),

];