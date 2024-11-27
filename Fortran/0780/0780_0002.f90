type ty0
  complex :: aa,bb
end type
type,extends(ty0):: ty1
  complex :: a,b
end type
type (ty1) ::str
data str%aa /1.0/
end
