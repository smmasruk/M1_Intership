# lisa.sage

import sys
from kerrgeodesic_gw import lisa_detector

def strain_sensitivity(frequencies):
    frequencies = list(map(float, frequencies))  # Convert input frequencies to a list of floats
    sensitivities = []
    for f in frequencies:
        sensitivity = lisa_detector.strain_sensitivity(f)
        sensitivities.append(sensitivity)
    return sensitivities

if __name__ == "__main__":
    frequencies = sys.argv[1:]  # Get frequencies from command-line arguments
    sensitivities = strain_sensitivity(frequencies)
    print(' '.join(map(str, sensitivities)))  # Print the result as a space-separated string
