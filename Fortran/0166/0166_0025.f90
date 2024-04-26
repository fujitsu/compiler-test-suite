type ty0
  complex :: aa,bb
end type
type,extends(ty0):: ty1
  complex :: a,b
end type
type (ty1) ::str
data str%a%re /1.0/
data str%a%im /2.0/
data str%b%re /1.0/
data str%b%im /2.0/
data str%ty0%aa%re /1.0/
data str%ty0%aa%im /2.0/
data str%ty0%bb%re /1.0/
data str%ty0%bb%im /2.0/
if (1.eq.2) then
print *,str%a%re
print *,str%a%im
print *,str%b%re
print *,str%b%im
print *,str%aa%re
print *,str%aa%im
print *,str%bb%re
print *,str%bb%im
end if
print *,'pass'
end
