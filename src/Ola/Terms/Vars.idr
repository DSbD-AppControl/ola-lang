||| Nameless representation.
|||
||| Module    : Vars.idr
||| Copyright : (c) Jan de Muijnck-Hughes
||| License   : see LICENSE
|||
|||
||| We can make this more erasable but that is for later.
|||
module Ola.Terms.Vars

-- @TODO Make Vars efficiently erasable.

import public Data.List.Elem

import Ola.Types

%default total

public export
Var : (context : List Ty)
   -> (type    : Ty)
              -> Type
Var ctxt type = Elem type ctxt

-- [ EOF ]
