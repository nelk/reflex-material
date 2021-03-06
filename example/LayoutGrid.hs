{-# LANGUAGE OverloadedStrings #-}

module LayoutGrid (layoutGridEx) where

import Control.Monad (replicateM_)
import Data.Monoid ((<>))
import Reflex.Dom

import Reflex.Material.LayoutGrid
import Reflex.Material.Types
import Reflex.Material.Typography

layoutGridEx :: MonadWidget t m => m ()
layoutGridEx = do
  display3_ "Layout Grid"
  layout_ (CssClass "demo-grid") $
    replicateM_ 12 (cell_ (span_ 1 <> CssClass "demo-cell") $ text "1")
  layout_ (CssClass "demo-grid") $
    replicateM_ 3 (cell_ (span_ 4 <> CssClass "demo-cell") $ text "4")
  layout_ (CssClass "demo-grid") $ do
    cell_ (span_ 6 <> CssClass "demo-cell") $ text "6"
    cell_ (span_ 4 <> CssClass "demo-cell") $ text "4"
    cell_ (span_ 2 <> CssClass "demo-cell") $ text "2"
