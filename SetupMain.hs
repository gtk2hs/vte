-- The real Setup file for a Gtk2Hs package (invoked via the SetupWrapper).
-- It contains only adjustments specific to this package,
-- all Gtk2Hs-specific boilerplate is kept in Gtk2HsSetup.hs
-- which should be kept identical across all packages.
--
import Gtk2HsSetup ( gtk2hsUserHooks, checkGtk2hsBuildtools )
import Distribution.Simple ( defaultMainWithHooks )

main = do
  checkGtk2hsBuildtools ["gtk2hsC2hs", "gtk2hsTypeGen", "gtk2hsHookGenerator"]
  defaultMainWithHooks gtk2hsUserHooks
  
