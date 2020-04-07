module mask()
{
  translate([-500, 800, -0.5])
    import("v5_D_mask.stl");
}

module filter()
{
  scale(44.0/45.40)
    translate([-360, 660, -2.5])
      import("v5_D_filter.stl");
}

module lock()
{
  scale(44.0/45.40)
    translate([-420, 660, 0])
      import("v5_D_lock.stl");
}

module all()
{
  mask();
  filter();
  lock();
}

for(dy=[0:0])
  translate([0, dy*80, 0])
    scale(1.04)
      all();
