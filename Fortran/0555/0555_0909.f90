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
call Aobj%asub(x=Aobj, z=4, y=5)
call Aobj%asubptr(z=3, y=5, x=Aobj)
call Aobj%bsub(z=4, x= Aobj)
call Aobj%bsubptr(x=Aobj, z= 4)

call Aobj%csub(y=3,x=Aobj)
call Aobj%csubptr(x=Aobj,y= 3)
call Aobj%csub(x=Aobj,y= 4)

end

