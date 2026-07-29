import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure InterbankExposurePackage where
  bankCount : ℕ
  exposureMatrix : Matrix (Fin bankCount) (Fin bankCount) ℝ
  capitalBuffer : Fin bankCount → ℝ
  defaultIndicator : Fin bankCount → Prop

structure InterbankExposureEvidence (I : InterbankExposurePackage) where
  exposureMatrixNonnegative : ∀ i j, I.exposureMatrix i j ≥ 0
  capitalBufferPositive : ∀ i, I.capitalBuffer i > 0
  defaultIndicatorClosed : ∀ i, I.defaultIndicator i → I.capitalBuffer i = 0

def InterbankExposureClosed (I : InterbankExposurePackage) : Prop :=
  (∀ i j, I.exposureMatrix i j ≥ 0) ∧ (∀ i, I.capitalBuffer i > 0) ∧ (∀ i, I.defaultIndicator i → I.capitalBuffer i = 0)

theorem interbank_exposure_closed_from_evidence (I : InterbankExposurePackage) (E : InterbankExposureEvidence I) :
    InterbankExposureClosed I := by
  exact And.intro E.exposureMatrixNonnegative (And.intro E.capitalBufferPositive E.defaultIndicatorClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse
