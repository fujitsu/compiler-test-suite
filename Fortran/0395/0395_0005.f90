module mod
 implicit none

  type testtyp
    integer,public :: val1 = 0
    integer,public :: val2 = 0
  contains
    procedure,public::printsum
  end type testtyp

  contains
    subroutine printsum(me)
      class(testtyp),intent(in) :: me
      integer sumx

      sumx = me%val1 + me%val2

      write(1,*)sumx

    end subroutine printsum

end module mod

program main
  use mod

  type(testtyp) obj1
  type(testtyp) obj2

  obj1%val1 = 5
  obj1%val2 = 2
  obj2%val1 = -3
  obj2%val2 = 4

  call obj1%printsum
  call obj2%printsum
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k;if (k/=7)print *,k
read(1,*) k;if (k/=1)print *,k
end
