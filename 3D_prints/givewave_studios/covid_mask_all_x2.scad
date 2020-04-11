use<covid_mask_all.scad>

for(dy=[0:1])
  translate([0, dy*130, 0])
    all();
