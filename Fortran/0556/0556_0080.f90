module m1        
        type Aty
        integer :: i = 3
        procedure(asub), pointer :: asubptr => NULL()
        procedure(bsub), pointer :: bsubptr => NULL()
        procedure(csub), pointer :: csubptr => NULL()
    contains
        procedure, PASS :: asub
        procedure, PASS :: bsub
        procedure, PASS :: csub
    end type
    type(Aty), target, SAVE :: Aobj
contains
    subroutine asub(this, x, y,z)
        class(Aty) :: this
        class(Aty) :: x
        integer :: y
        integer :: z
        print*, "A3",y , z
    end subroutine
    subroutine bsub(this, x, y, z)
        class(Aty) :: this
        class(Aty):: x
        integer, optional :: y
        integer :: z
        print*, "B3",z
    end subroutine
    subroutine csub(this, x, y, z)
        class(Aty) :: this
        class(Aty):: x
        integer :: y
        integer, optional :: z
        if(present(z)) print*, "z present"
        print*, "C3",y
    end subroutine
end module
program main
use m1
Aobj%asubptr => asub
Aobj%bsubptr => bsub
Aobj%csubptr => csub
call Aobj%asub(Aobj, 4, 5)
call Aobj%asubptr(Aobj, 4, 5)
call Aobj%bsub(Aobj, 3, 4)
call Aobj%bsubptr(Aobj, 3, 4)
call Aobj%csub(Aobj, 3)
call Aobj%csubptr(Aobj, 3)
call Aobj%csub(Aobj, 3, 4)
call Aobj%csubptr(Aobj, 3, 4)
print*, "Pass"
end
