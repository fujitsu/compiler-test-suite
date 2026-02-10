subroutine sub(i)
implicit none
integer i
type TAG
   sequence
   integer*8 i,j
end type
type(TAG) st1
i=i+1
return
entry ent_value_st(st1)
st1%i = st1%i + 1
st1%j = st1%j + 1
end subroutine sub
