-- | Free-energy functional for Kanal.
--
-- F(U) = U_energy - T S - k_B T I
-- Excitement = argmin admissible F
module Kanal.FreeEnergy where

import Kanal.Core

-- Placeholder: joint free-energy-like functional
freeEnergy :: Field -> FreeEnergy
freeEnergy f = freeEnergy f  -- recursive placeholder; will be proper functional

-- Native directed process
excitement :: Field -> Field
excitement f = f  -- TODO: select admissible continuation that minimizes F
