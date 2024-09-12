integer,target :: ttt=1
type ty1
integer,pointer :: p
end type
type(ty1) :: str
data str%p /ttt/
if (str%p.ne.1 ) print *,'err'
print *,'pass'
end
