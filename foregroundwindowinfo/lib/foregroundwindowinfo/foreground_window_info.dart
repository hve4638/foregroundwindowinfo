class ForegroundWindowInfo {
  bool isRunning = false;
  String _title = "Unknown";
  String _name = "Unknown";
  String ?_nickName;
  String _path = "Unknown";
  String _time = "00:00:00";
  DateTime _date = DateTime.now();
  get title => _title;
  get name => _nickName ?? _name;
  get path => _path;
  get time => _time;
  get date => _date;
  get actualName => _name;
  get nickName => _nickName ?? "unknown";

  void set({
    String ?title,
    String ?name,
    String ?nickName,
    String ?time,
    DateTime ?date,
  }) {
    if (title != null) _title = title;
    if (name != null) _name = name;
    if (nickName != null) _nickName = nickName;
    if (date != null) _date = date;
    if (time != null) _time = time;
  }

  void copy(ForegroundWindowInfo source) {
    isRunning = source.isRunning;
    _title = source.title;
    _name = source.name;
    _path = source.path;
    _time = source.time;
  }

  //get isRunning => _isRunning;
  //get title => _title;
  //get name => _name;
  //get path => _path;
  //get time => _time;
}