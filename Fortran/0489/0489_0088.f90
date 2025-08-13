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
               write(39,*) dmy%ii
                end subroutine
               end module

             use m0
             logical::file_exists
             call sub
             inquire(file="fort.2", exist=file_exists)
             if (file_exists) then
rewind 39
read(39,*) n
if (n/=1) print *,101,n
read(39,*,end=9) n
if (n/=1) print *,101,n
             endif
          9     print*, "pass"

                contains
                subroutine s1(d1)
               type(ty1),INTENT(in)  :: d1
                integer :: v1, v2
                v1=d1%ty0_obj%ii
                v2=d1%jj
                v1=v1+v2
                end subroutine
                subroutine sub()
               call s1(ty1(10,10, ty0(1)))
                end subroutine
                end
