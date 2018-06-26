$fa=0.1; // default minimum facet angle is now 0.5
$fs=0.1; // default minimum facet size is now 0.5 mm


difference()
{
cube (size=[15.928,31.956,9.6]);  //outer block edges
translate ([1.557,1.557,-1]){cube (size=[12.814,28.842,9]);} //inner block
}

for (holePos = [7.964,15.978,23.992])
{
translate([7.964,holePos,0])
{
 difference()
 {
  cylinder (r=3.267, h=8.5);
  cylinder (r=2.417, h=8.5);
 }
}
}


for (x = [3.957,11.971])
for (y = [3.957,11.971,19.985,27.999])
{
 translate ([x,y,9.5])cylinder (r=2.4,h=2.2);
}