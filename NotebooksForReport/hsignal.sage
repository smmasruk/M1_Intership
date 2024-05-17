from kerrgeodesic_gw import (KerrBH,h_plus_particle, h_cross_particle, 
                             h_amplitude_particle_fourier, plot_spectrum_particle, 
                             plot_h_particle, h_particle_signal)



def r_isco(a):
    return KerrBH(a).isco_radius()


def ordital_period(a, r0):
    return RDF(2*pi*(r0^(3/2) + a))


def hpm(phi1,a1,r01):
    k=[]
    l=[]
    phi1 = 0
    a1 = 0
    r01 = 0.15000 + r_isco(a1) 
    tmax1 = 2 * ordital_period(a1, r01)
    theta1 = pi/2  # Initialize theta1 as a numeric value
    signal1=h_particle_signal(a1, r01, theta1, phi1, 0, 200,  mode='+',
                        nb_points=400, phi0=0, l_max=10, m_min=1,
                        approximation=None, store=None)
    signal2=h_particle_signal(a1, r01, theta1, phi1, 0, 200,  mode='x',
                        nb_points=400, phi0=0, l_max=10, m_min=1,
                        approximation=None, store=None)

    return signal1
phi1 = 0
a1 = 0
r01 = 0.15000 + r_isco(a1) 

print(hpm(phi1,a1,r01))
# print(type(hpm))