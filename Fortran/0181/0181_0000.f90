pure subroutine s1(l)
  USE, intrinsic::ISO_C_BINDING,ONLY:c_associated,c_ptr,c_funptr,c_loc
  logical,intent(out) :: l
  integer,pointer :: a,b
  integer,target :: t
  type(c_ptr):: p1, p2
  t=1
  a=>t
  b=>t
  p1 = c_loc(a)
  p2 = c_loc(b)
  l = c_associated( p1,p2 )
end
logical :: x,c
c = .true.
call s1(x)
  if(x.neqv.c) print *,x
  print *,'pass'
end

