for(dy=[0:4])
  for(dx=[0:1])
    translate([dx*20, dy*5, 0])
      import("Elastic_ClipV1.3.stl");
