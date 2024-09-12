interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
 function ifunc02() result(irst02)
  logical :: irst02
 end function
end interface

type ty01
 procedure(integer), pointer, nopass :: p1 => null()
 procedure(logical), pointer, nopass :: p2 => null()
 procedure(ifunc01), pointer, nopass :: p3 => null()
 procedure(ifunc02), pointer, nopass :: p4 => null()
 procedure(       ), pointer, nopass :: p5 => null()
end type

procedure(integer), pointer :: p1
procedure(logical), pointer :: p2
procedure(ifunc01), pointer :: p3
procedure(ifunc02), pointer :: p4
procedure(       ), pointer :: p5

type (ty01) :: t01

t01 = ty01(p1 = null())
t01 = ty01(p2 = null())
t01 = ty01(p3 = null())
t01 = ty01(p4 = null())
t01 = ty01(p5 = null())

t01 = ty01(p1 = p1)
t01 = ty01(p2 = p2)
t01 = ty01(p3 = p3)
t01 = ty01(p4 = p4)

t01 = ty01(p5 = p1)
t01 = ty01(p5 = p2)
t01 = ty01(p5 = p3)
t01 = ty01(p5 = p4)
t01 = ty01(p5 = p5)

t01 = ty01(p1 = null(p1))
t01 = ty01(p2 = null(p2))
t01 = ty01(p3 = null(p3))
t01 = ty01(p4 = null(p4))

t01 = ty01(p5 = null(p1))
t01 = ty01(p5 = null(p2))
t01 = ty01(p5 = null(p3))
t01 = ty01(p5 = null(p4))
t01 = ty01(p5 = null(p5))

print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc02() result(irst02)
 logical :: irst02
 irst02 = .true.
end function
