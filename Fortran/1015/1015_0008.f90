program main
  call sub(0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5)
end

subroutine sub(i1,i2,i4,i8,r4,r8,r16,c8,c16,c32,l1,l2,l4,l8,s10,sa)
  integer*1:: i1
  integer*2:: i2
  integer*4:: i4
  integer*8:: i8
  real*4:: r4
  real*8:: r8
  real*16:: r16
  complex*8:: c8
  complex*16:: c16
  complex*32:: c32
  logical*1:: l1
  logical*2:: l2
  logical*4:: l4
  logical*8:: l8
  character(len=10):: s10
  character(*):: sa
end
