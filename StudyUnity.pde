Table studentTable;
Table classTable;
Table scoreTable;
Table actionTable;

void setup(){
  studentTable = loadTable("student.csv","header");
  classTable = loadTable("class.csv","header");
  scoreTable = loadTable("score.csv","header");
  actionTable = loadTable("action.csv","header");
  
  int stid = actionTable.getRow(0).getInt("student_id");
  int clid = actionTable.getRow(0).getInt("class_id");
  int scid = actionTable.getRow(0).getInt("score_id");
  String str = "";
  
  str += studentTable.findRow(""+stid,"id").getString("name");
  str += "在";
  String tempstr = classTable.findRow(""+clid,"id").getString("info");
  String[] ttstr = split(tempstr,';');
  str += ttstr[0]+"的";
  str += classTable.findRow(""+clid,"id").getString("name");
  str += "课上获得了";
  str += scoreTable.findRow(""+scid,"id").getString("score");
  str += "分！";
  
  
  println(str);
  
  //studentTable.getRow(2).setInt("points",str+100);
  //saveTable(studentTable,"student.csv");
}

void draw(){
  
}