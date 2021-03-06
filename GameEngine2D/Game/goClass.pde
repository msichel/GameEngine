class GameObject
{
  Transform transform;
  ArrayList <GameObject> children = new ArrayList<GameObject>();
  ArrayList <Component> components = new ArrayList<Component>();
  ArrayList <circleColider> cColiders = new ArrayList<circleColider>();
  GameObject parent;
  GameObject()
  {
    transform = new Transform();
  }
  GameObject(PVector pos, Complex rot, PVector scale)
  {
    transform = new Transform(pos,rot,scale);
  }
  void addChildObject(GameObject g)
  {
    g.setParent(this);
    children.add(g);
  }
  void removeChildObject(GameObject g)
  {
    children.remove(g);
  }
  void setParent(GameObject g)
  {
    parent = g;
  }
  void addComponent(Component c)
  {
    components.add(c);
  }
  void addColider(circleColider cc)
  {
    cColiders.add(cc);
    addComponent(cc);
  }
  void removeColider(circleColider cc)
  {
    cColiders.remove(cc);
    removeComponent (cc);
  }
  void removeComponent(Component c)
  {
    components.remove(c);
  }
  void input()
  {
    for(GameObject g : children)
    {
      g.input();
    }
    for(Component c : components)
    {
      c.input();
    }
  }
  void update()
  {
    for(GameObject g : children)
    {
      g.update();
    }
    for(Component c : components)
    {
      c.update();
    }
  }
  void lateUpdate()
  {
    for(GameObject g : children)
    {
      g.lateUpdate();
    }
    for(Component c : components)
    {
      c.lateUpdate();
    }
  }
  void render()
  {
    for(GameObject g : children)
    {
      g.render();
    }
    for(Component c : components)
    {
      c.render();
    }
  }
  ArrayList<circleColider> getcCols()
  {
    ArrayList<circleColider> cCols = new ArrayList<circleColider>();
    for(GameObject g : children)
    {
      for(circleColider c:g.getcCols())
      {
        cCols.add(c);
      }
    }
    for(Component c:components)
    {
      
      cCols.add((circleColider)c);
    }
    return cCols;
  }
}
