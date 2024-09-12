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
                write(1,*) dmy%ii
                end subroutine
                end module

              use m0
                call sub
rewind 1
read(1,*) k;if(k/=2) print *,201
read(1,*,end=3) k
 print *,201
  3              print*, "pass"

                contains
                subroutine s1(d1)
                type(ty1),INTENT(in)  :: d1
                integer :: v1, v2
                v1=d1%ty0_obj%ii
                v2=d1%jj
                v1=v1+v2
                end subroutine
                subroutine sub()
                type(ty0),save :: ty0_var
                type(ty1),save :: ty1_var
                ty0_var%ii=2
                ty1_var%jj=10
                ty1_var%kk=10
                allocate(ty1_var%ty0_obj)
                ty1_var%ty0_obj%ii=2
                ty1_var%ty0_obj=ty0_var
                call s1( ty1_var           )
                end subroutine
               end
