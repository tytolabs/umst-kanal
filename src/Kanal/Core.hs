-- | Kanal continuous core.
--
-- Native objects: multi-scale geometric-thermodynamic fields.
-- Native morphisms: continuous free-energy flows under the single second-law axiom.
-- Discrete binary is never native; only an explicitly costed projection.
module Kanal.Core
  ( Field
  , FreeEnergy
  , Admissibility
  , Morphism
  ) where

-- Placeholder for multi-resolution multi-dimensional SDF/FRep carrier
-- with exact algebraic coefficients (drift-free identity).
data Field = Field
  { geometry :: String  -- TODO: actual multi-scale SDF/FRep
  , freeEnergy :: FreeEnergy
  , witness :: Admissibility
  } deriving (Show)

-- Joint free-energy account (energy - T S - kT I ...)
newtype FreeEnergy = FreeEnergy Double deriving (Show, Num, Ord)

-- Machine-checkable certificate that second-law inequality and conservation hold.
data Admissibility = Admissible | Inadmissible String deriving (Show)

-- A Kanal program *is* a continuous free-energy morphism.
type Morphism a b = Field -> (Field, Admissibility)
