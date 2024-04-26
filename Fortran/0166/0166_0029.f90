type ty0
  complex :: aa,bb
end type
type,extends(ty0):: ty1
  complex :: a,b
end type
type (ty1) ::str
data str%ty0%aa%re /1.0/
data str%ty0%bb%im /2.0/
if (str%ty0%aa%re.ne.1.0) print *,'pass'
if (str%ty0%bb%im.ne.2.0) print *,'pass'
print *,'pass'
end
