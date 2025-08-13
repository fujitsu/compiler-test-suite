          module m0
                  type :: ty0
                  integer :: ii=0
                  contains
                  FINAL::destructor
                  end type


                contains
                subroutine destructor(dmy)
                IMPLICIT NONE
                TYPE(ty0), INTENT(INOUT):: dmy
                write(38,*) dmy%ii
                end subroutine
                end module

              use m0
                call sub
rewind 38
read(38,*) n
if (n/=2) print *,201
read(38,*,end=9) n
if (n/=2) print *,202
9 print*, "pass"

                contains
                subroutine sub()
                type(ty0),save :: ty0_var
                type(ty0),allocatable :: ty0_obj
                ty0_var%ii=2
                ty0_obj=ty0_var
               end
               end
