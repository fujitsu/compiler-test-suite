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
                write(2,*) dmy%ii
                end subroutine
                end module

              use m0
                call sub
rewind 2
read(2,*) n
if (n/=2) print *,701
read(2,*) n
if (n/=2) print *,702
                print*, "pass"

                contains
                subroutine s1(d1)
                type(ty1),INTENT(in)  :: d1
                integer :: v1, v2
                v1=d1%ty0_obj%ii
                v2=d1%jj
                v1=v1+v2
                end subroutine
                subroutine sub()
                type(ty0),allocatable :: ty0_var
                allocate( ty0_var)
                ty0_var%ii=2
                call s1(ty1(10,10, ty0_var))
                end subroutine
               end
