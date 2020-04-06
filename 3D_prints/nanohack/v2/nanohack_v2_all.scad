module mask()
{
  translate([-500, 800, -0.5])
    import("v5_D_mask.stl");
}

module filter()
{
  translate([-360, 660, -2.5])
    import("v5_D_filter.stl");
}

module lock()
{
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
    all();
