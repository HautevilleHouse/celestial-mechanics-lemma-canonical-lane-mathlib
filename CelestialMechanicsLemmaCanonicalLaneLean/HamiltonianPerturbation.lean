import CelestialMechanicsLemmaCanonicalLaneLean.ThreeBodyRegularization

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure Hamiltonian (n : ℕ) where
  kinetic : (ℝ^n) → ℝ
  potential : (ℝ^n) → ℝ
  total : (ℝ^n) → ℝ
  total p := kinetic p + potential p

structure PerturbedHamiltonian (n : ℕ) (H0 : Hamiltonian n) where
  perturbation : (ℝ^n) → ℝ
  total p := H0.total p + perturbation p

def dAlembertReduction (H : Hamiltonian 6) : Hamiltonian 4 := by
  admit

theorem poincare_lyapunov_center (H : Hamiltonian 4) (periodicOrbit : Prop) : periodicOrbit := by
  admit

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
