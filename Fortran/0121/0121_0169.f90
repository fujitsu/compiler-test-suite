module mod
  type TAG1
    integer*1 a(2)
  end type
  type (TAG1) aa
  type TAG2
    integer*1 b(2)
  end type
  type (TAG2) bb
end module
subroutine sub(n)
  use mod
  integer*8::i,j
  do i=1,2
     aa%a(i) = bb%b(i+n)
     do j=1,2
       bb%b(j+0) = -1
     end do
  end do
  print *,aa
end subroutine sub
!
use mod
aa%a = 0
bb%b = (/1,2/)
call sub(0)
end program
