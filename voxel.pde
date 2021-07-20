class Voxel implements Comparable<Voxel> {
  
  color c;

  Voxel(color _c) {
    c = _c;
  }
  
  
//comparing voxel brightness and returning integers  
  int compareTo(Voxel other) {
    float thisB = brightness(this.c);
    float otherB = brightness(other.c);
    if (thisB < otherB) {
      return -1;
    } else if (thisB > otherB) {
      return 1;
    } else {
      return 0;
    }
  }
}
