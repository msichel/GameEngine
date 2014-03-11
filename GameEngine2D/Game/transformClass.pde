class Transform
{
  PVector pos;
  Complex rot;
  PVector scale;
  Transform(PVector pos_, Complex rot_, PVector scale_)
  {
    pos = new PVector(pos_.x,pos_.y);
    rot = rot_.mul(1);
    scale = new PVector(scale_.x,scale_.y);
  }
    Transform()
  {
    pos = new PVector(0,0);
    rot = new Complex(1,0);
    scale = new PVector(1,1);
  }
  void setPos(PVector p)
  {
    pos = p;
  }
  void shift (PVector p)
  {
    pos.add(p);
  }
  void setRot(Complex c)
  {
    rot = c;
  }
  void spin (Complex c)
  {
    rot = rot.mul(c);
  }
  void setScale(PVector p)
  {
    scale = p;
  }  
}
