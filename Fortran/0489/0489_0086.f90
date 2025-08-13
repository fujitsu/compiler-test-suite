          module m0
                  type :: ty0
                  integer :: ii
                  contains
                  FINAL::destructor
                  end type

                 type   :: ty1
                  integer :: jj
                integer :: kk
                type(ty0),allocatable :: ty0_obj
                end type

                contains
                subroutine destructor(dmy)
                IMPLICIT NONE
                TYPE(ty0), INTENT(INOUT):: dmy
                write(37,*) dmy%ii
                end subroutine
                end module

              use m0
 write(37,*) 100
                call sub
rewind 37
read(37,*) n;if (n/=100) print *,2001
read(37,*,end=9) n
if (n/=2) print *,701
read(37,*) n
if (n/=2) print *,702
            9   print*, "pass"

                contains
                subroutine s1(d1)
                type(ty0),value  :: d1
                integer :: v1
           write(36,'("s1 :",z16.16)') loc(d1)
                v1=d1%ii
                v1=v1+1
                end subroutine
                subroutine sub()
                type(ty0),save :: ty0_var
                ty0_var%ii=2
           write(36,'("sub :",z16.16)') loc(ty0_var)
                call s1(ty0_var)
                end subroutine
               end
