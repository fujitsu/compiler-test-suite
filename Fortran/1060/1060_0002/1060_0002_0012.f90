subroutine sub_value_st(i)
implicit none
integer i(:,:)
type TAG
   sequence
   integer*8 i,j
end type
type(TAG),value:: st1
i=i+1
return
entry ent_value_st(st1)
st1%i = st1%i + 1
st1%j = st1%j + 1
  if (st1%i.ne.3) stop '1-2'
  if (st1%j.ne.4) stop '1-3'    
end
