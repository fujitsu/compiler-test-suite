type ty1
character :: ccc(19)
complex :: cha(19)
end type
type(ty1) :: str
data str%cha(1:1)%re /1/
if (abs(str%cha(1)%re-(1,0)) > 0.001) print *,'err'
print *,'pass'
end
