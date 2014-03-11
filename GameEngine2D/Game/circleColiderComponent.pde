class circleColider extends Component
{
  PVector pos;
  float scale;
  float radius;
  circleColider(float r, Transform t)
  {
    pos = t.pos;
    radius = r;
  }
  circleColider checkColision(circleColider cc)
  {
    if(dist(pos.x,cc.pos.x,pos.y,cc.pos.y) <= (radius+cc.radius)/2)
    {
      return cc;
    }
    else
    {
      return null;
    }
  }
}
