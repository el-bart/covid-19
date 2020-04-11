module clip()
{
  translate([0, 0, 1.5])
    import("Elastic_ClipV1.3.stl");
}

module mask()
{
  rotate([0, 0, 90])
    translate([-80, 0, 4.6])
      import("covid_mask.stl");
}

module cap()
{
  rotate([0, 0, 90])
    translate([-80, -75, 6.5])
      import("covid_mask_cap.stl");
}

module grid()
{
  translate([-150, 10, -5.25])
    import("covid_mask_grid.stl");
}


module all()
{
  mask();
  cap();
  grid();
  for(dy=[0:2])    // 2 neede + 1 spare
    translate([0, dy*6, 0])
      clip();
}

all();
