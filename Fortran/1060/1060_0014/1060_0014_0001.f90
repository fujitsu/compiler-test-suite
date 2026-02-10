subroutine sub(i)
implicit none
integer i
type TAG
   integer*8 i,j
end type
class(TAG) st1
i=i+1
return
entry ent_class(st1)
st1%i = st1%i + 1
st1%j = st1%j + 1
end subroutine sub
