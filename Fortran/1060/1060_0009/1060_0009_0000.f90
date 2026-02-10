interface
subroutine sub(r, st)
type TAG
   sequence
   integer*8 i, j
end type
real*4 r
type(TAG),value:: st
end subroutine
subroutine ent(st, r)
type TAG
   sequence
   integer*8 i, j
end type
real*4 r
type(TAG),value:: st
end subroutine
end interface

type TAG
   sequence
   integer*8 i, j
end type
type(TAG),parameter:: one = TAG(1,0)

  call sub(2.0, one)
  call ent(TAG(0,2), 1.0)
  
  print *,'PASS'

end program
