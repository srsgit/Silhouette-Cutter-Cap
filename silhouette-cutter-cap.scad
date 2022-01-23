// Diameter of thin section of Silhouette pen, below the step. You shouldn't have to change this.
standard_thin_diameter = 13.9;

// Diameter of thick section of Silhouette pen, above the step. You shouldn't have to change this.
standard_thick_diameter = 16.0;


// Length of holder, to extend above the step. Overall length will be this dimension + pen_tip_length.
holder_length = 21;

/* [Hidden] */
slop = 0.15;
$fa = 5;
$fs = 0.5;

difference() {
     cylinder(h=holder_length+4, d=standard_thin_diameter + 1.6);
     cylinder(h=holder_length,   d=standard_thin_diameter + slop);
     cylinder(h=holder_length+4, d=6);
}

