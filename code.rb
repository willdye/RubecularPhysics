PO212_NUCLEON_COUNT = 212
PO212_HALF_LIFE_MICROSEC = 0.3
ALPHA_KINETIC_ENERGY_MEV = 8.78

#Found online
ALPHA_REST_MASS_MEV = 3727.379378
NUCLEON_RADIUS_FEMTOMETERS = 1.3

def velocity_from_ke_and_mass(kinetic_energy, mass)
  Math.sqrt((2 * kinetic_energy) / mass)
end

def nuclear_radius_femtometers(nucleon_count)
  NUCLEON_RADIUS_FEMTOMETERS * ( nucleon_count ** (1.0/3.0))
end

velocity = velocity_from_ke_and_mass(ALPHA_KINETIC_ENERGY_MEV, ALPHA_REST_MASS_MEV)
diameter = nuclear_radius_femtometers(PO212_NUCLEON_COUNT) * 2;

(velocity*diameter)/PO212_HALF_LIFE_MICROSEC
