module xxx
  type test
    sequence
    integer*1     :: i1
    integer       :: i4
    integer*8     :: i8
    real          :: r4
    real*16       :: r16
    complex       :: c8
    complex*32    :: c32 
    character*128 :: str 
  end type test
end module xxx

subroutine sub(a, b)
use xxx
type(test) a(5,5,5,5), b(5,5,5,5)

do i4=1, 5
do i3=1, 5
do i2=1, 5
do i1=1, 5
      a(i1,i2,i3,i4) = b(i1,i2,i3,i4)
end do
end do
end do
end do

end

program main
use xxx
type(test) a(5,5,5,5), b(5,5,5,5)

do i4=1, 5
do i3=1, 5
do i2=1, 5
do i1=1, 5
      b(i1,i2,i3,i4)%i1 = 1
      b(i1,i2,i3,i4)%i4 = 1
      b(i1,i2,i3,i4)%i8 = 1
      b(i1,i2,i3,i4)%r4 = 1.
      b(i1,i2,i3,i4)%r16 = 1.
      b(i1,i2,i3,i4)%c8 = cmplx(1.0, 1.0)
      b(i1,i2,i3,i4)%c32 = cmplx(1.0, 1.0)
      b(i1,i2,i3,i4)%str = 'testa'
end do
end do
end do
end do


call sub(a,b)

if (a(1,1,1,1)%str .eq. 'testa') then
  print *,"ok"
endif
end program

