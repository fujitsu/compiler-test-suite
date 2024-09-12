module m1
    type Aty
        integer :: i = 3
        procedure(asub), pointer :: asubptr => NULL()
        procedure(bsub), pointer :: bsubptr => NULL()
        procedure(csub), pointer :: csubptr => NULL()
        procedure(psub), pointer :: psubptr => NULL()
    contains
        procedure, PASS :: asub
        procedure, PASS :: bsub
        procedure, PASS :: csub
        procedure, PASS(this) :: psub1 => psub
        procedure, PASS :: psub2 => psub
        procedure, NOPASS :: psub3 => psub
        generic :: gen =>psub1 ,psub2
    end type
    type(Aty), target, SAVE :: Aobj
contains
    subroutine asub(this, x, y, z)
        class(Aty) :: this
        class(Aty),optional :: x
        integer :: y
        integer :: z
        print*, "A3", y, z
    end subroutine

    subroutine bsub(this, x, y, z)
        class(Aty) :: this
        class(Aty):: x
        real, optional :: y
        real :: z
        print*, "B3", z
    end subroutine
    subroutine csub(this, x, y, z)
        class(Aty) :: this
        class(Aty), optional:: x
        real, optional :: y
        integer, optional :: z
        print*, "C3"
        if(present(x)) print*, "x present"
        if(present(y)) print*, "y present"
        if(present(z)) print*, "z present"
    end subroutine
    subroutine psub(x, c, this)
        class(Aty) :: x
        class(Aty), optional :: this
        character, optional :: c
        if(present(c)) print*, "c present"

        print*, "psub"
    end subroutine

end module
program main
use m1
call Aobj%gen(Aobj) 
call Aobj%gen(Aobj, 'A') 
end

