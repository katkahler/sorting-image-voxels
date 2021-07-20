import java.util.PriorityQueue;

int voxelSize = 10;
PImage img;
ArrayList<Column> columns;

void setup() {
  size(500, 500);
  noStroke();
  img = loadImage("saihara.jpg");
  img.resize(500, 0);
  columns = new ArrayList<Column>();

  int numRows = width / voxelSize;
  int numColumns = height / voxelSize;


  for (int x = 0; x < numColumns; x++) {
    color[] voxelList = new color[numRows];
    for (int y = 0; y < numRows; y++) {
      color voxelColor = img.get(x * voxelSize, y * voxelSize);
      voxelList[y] = voxelColor;
    }
    Column c = new Column(x, voxelList);
    columns.add(c);
  }
}

void draw() {
  for (Column c : columns) {
    c.display();
  }
}
