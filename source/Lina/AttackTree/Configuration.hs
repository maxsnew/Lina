{-# LANGUAGE GADTs                #-}
module Lina.AttackTree.Configuration where

import Data.Semiring 

data Conf attribute = Ord attribute => Conf {
      andOp :: attribute -> attribute -> attribute,
      seqOp :: attribute -> attribute -> attribute
}

addMulConf :: (Ord a,Semiring a) => Conf a
addMulConf = Conf (.+.) (.*.)
