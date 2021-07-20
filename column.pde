import java.util.PriorityQueue;

class Column {
  PriorityQueue<Voxel> voxels;
  int xpos;


  Column(int _xpos, color[] _myColors) {
    xpos = _xpos;
    voxels = new PriorityQueue<Voxel>();

    //run thru all colors on image
    for (int colorIndex = 0; colorIndex < _myColors.length; colorIndex++) {
      voxels.add(new Voxel(_myColors[colorIndex]));
    }
  }

  void display() {
    int pixelsDisplayed = 0;
    while (voxels.size() > 0) {
      Voxel v = voxels.poll(); 
      fill(v.c); 
      square(xpos * voxelSize, pixelsDisplayed * voxelSize, voxelSize);
      pixelsDisplayed++;
    }
  }
}
