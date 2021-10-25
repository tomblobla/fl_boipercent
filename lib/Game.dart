class Game {
  static var yourName = '';
  static var crushName = '';

  static String Boi() {
    String point = ConvertCoupleToPoint();
    point = ShorterPoint(point);

    return point;
  }

  static String GetDetail(String point) {
    if (int.parse(point) < 50)
      return 'Hai người không quá hòa hợp với nhau. Hãy cố gắng tìm cơ hội để thấu hiểu đối phương.';
    else if (int.parse(point) < 80)
      return 'Sự phù hợp giữa hai người ở mức tương đối. Chuyện tình cảm có thể tiến triển xa hơn nữa.';
    else
      return 'Hai người sinh ra là để dành cho nhau. Mối tình rất bền chặt và sẽ kéo dài đến suốt đời.';
  }

  static String ConvertCoupleToPoint() {
    var pointstr = "";
    var couplestr = (yourName + crushName).toUpperCase();

    'LOVES'.runes.forEach((int rune) {
      var c = new String.fromCharCode(rune);

      pointstr += (c.allMatches(couplestr).length + 1).toString();
    });

    return pointstr;
  }

  static String ShorterPoint(String point) {
    while (int.parse(point) >= 100) {
      var pointchar = point.split('');
      point = "";

      for (var i = 1; i < pointchar.length; i++) {
        point += (int.parse(pointchar[i]) + int.parse(pointchar[0])).toString();
      }
    }
    return point;
  }
}
