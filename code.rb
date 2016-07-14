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
# femptometers per second
diameter = nuclear_radius_femtometers(PO212_NUCLEON_COUNT) * 2;
# femtometers

(velocity*diameter)/PO212_HALF_LIFE_MICROSEC

#########################################################

# fm * 10 ** 23 per second
puts velocity
puts diameter
puts ( velocity / diameter ) * 10 ** 23
(velocity*diameter) # /PO212_HALF_LIFE_MICROSEC

#4.42 e 20 different collisisons per second
#50% chance of a collission tunneling = 0.3 microseconds = 3e-7 seconds

#? sided die...after 10 times equal 50% probablity
#X/10 = 0.50
#Success/Total Trials
#X = 0.50*10
#X = 5

#4.42e 20*3e-7 seconds get you the total number of collisions altogether
# (1/COLLISIONS)....but only the 50% chance of that collisison, so we double it. 

#1.326e14

#(1/1.326e14)/0.50 = 1.5082956e-14%

#1000 times to get 5 success = 5/1000
