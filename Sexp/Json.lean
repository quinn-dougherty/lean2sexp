import Sexp.Basic
import Lean

deriving instance Lean.ToJson for Sexp
deriving instance Lean.FromJson for Sexp

def Json.write (fh : IO.FS.Handle) (j : Lean.Json) : IO Unit := do
  fh.putStrLn j.compress
