           module m0
                 type :: tya
                 integer :: kk
                end type

                 type :: ty0
                 integer :: kk
                  type(tya),allocatable :: tya_obj
                 contains
                 FINAL::destructor0
                end type

                type   :: ty1
                 integer :: kk
                 type(ty0),allocatable :: ty0_obj
                 contains
                 FINAL::destructor1
                end type

               contains
                subroutine destructor0(dmy)
                IMPLICIT NONE
                TYPE(ty0), INTENT(INOUT):: dmy
               write(2,*)'destructor0 call ', loc(dmy%tya_obj)
          write(1,*) dmy%tya_obj%kk
                end subroutine
                subroutine destructor1(dmy)
                IMPLICIT NONE
                TYPE(ty1), INTENT(INOUT):: dmy
          write(1,*) dmy%ty0_obj%kk
                end subroutine
               end module

             use m0
               call sub
rewind 1
read(1,*) k1
if (k1/=20) print *,101
read(1,*) k1
if (k1/=30) print *,103
                print*, "pass"

                contains
                subroutine sub()
                   type(ty1),allocatable:: x
                   allocate(x)
                   x%kk =10  
                   allocate(x%ty0_obj)
                   x%ty0_obj%kk=20
                   allocate(x%ty0_obj%tya_obj)
                   x%ty0_obj%tya_obj%kk=30
                end subroutine
                end
