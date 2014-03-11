class Complex
{
  float x;
  float y;
  Complex (float x_, float y_)
  {
    x = x_;
    y = y_;
  }
  Complex mul(Complex complex)
  {
    float a = x*complex.x;
    float b = x * complex.y+ y*complex.x;
    float c = y*complex.y;
    return new Complex(a-c,b);
  }
   Complex mul(PVector complex)
  {
    float a = x*complex.x;
    float b = x * complex.y+ y*complex.x;
    float c = y*complex.y;
    return new Complex(a-c,b);
  }
  Complex mul(float a)
  {
    return new Complex(x*a,y*a);
  }
  Complex conjugate()
  {
    return new Complex(x,-y);
  }
  PVector toVector()
  {
    return new PVector(x,y);
  }
  Complex normalized()
  {
    float length =sqrt(sq(x)+sq(y)) ;
    return new Complex(x/length,y/length);
  }
}
