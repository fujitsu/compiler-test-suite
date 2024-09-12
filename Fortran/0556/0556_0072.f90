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
        generic :: gen => asub ,csub ,bsub ,psub1 ,psub2
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
        character :: c
        print*, "psub", c
        if (present(this)) print*, "this present"
    end subroutine

end module
program main
use m1
call Aobj%psub1(c='A', x=Aobj)
call Aobj%psub2(this=Aobj,c='A' )
call Aobj%psub2(c='A')
call Aobj%psub3(c='A',this=Aobj, x=Aobj)
print*, "----------------------- check gen -1 ------------------"
call Aobj%gen(Aobj, 'A')
call Aobj%gen(c ='A',  x =Aobj)
call Aobj%gen('B', Aobj)
call Aobj%gen('B', this=Aobj)
call psub(x=Aobj, c='D', this=Aobj)
print*, "----------------------- check 2 ---------------------"
Aobj%asubptr => asub
Aobj%bsubptr => bsub
Aobj%csubptr => csub
call Aobj%asub(x=Aobj, z=4, y=5)
call Aobj%asubptr(z=4, x=Aobj, y=5)

call Aobj%bsub(x=Aobj,z= 3.0, y=4.0)
call Aobj%bsub(x=Aobj,z= 3.0)
call Aobj%bsubptr(z= 3.0, y=4.0, x=Aobj)
call Aobj%bsubptr(z= 3.0, x=Aobj)
call Aobj%bsubptr(x=Aobj, z= 5.0)

call Aobj%csub()
call Aobj%csubptr()

call Aobj%csub(X=Aobj)
call Aobj%csubptr(x=Aobj)

call Aobj%csub(x=Aobj, y=3.0)
call Aobj%csubptr(x=Aobj, y=3.0)

call Aobj%csub(x=Aobj, z=3)
call Aobj%csubptr(x=Aobj, z=3)

call csub(Aobj,x=Aobj, z=3)
call csub(Aobj, x=Aobj, y=3.0)

call Aobj%csub(Aobj, 3.0, 4)
call Aobj%csubptr(Aobj, 3.0, 4)

print*,  "------------------checking gen -2 -------------------"
call Aobj%gen(Aobj, z=3,y=4)
call Aobj%gen(Aobj, y=3.0,z=4.0)
call Aobj%gen()
call Aobj%gen(x=Aobj)
call Aobj%gen(x=Aobj, y=3.0)
call Aobj%gen(x=Aobj, y=3.0,z=4)
print*, "Pass"
end
