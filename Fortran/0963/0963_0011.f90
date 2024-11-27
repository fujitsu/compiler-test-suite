type :: t1
  integer :: i
end type

type, extends(t1) :: t2
end type

type(t1),target :: x1
type(t2),target :: x2

select type ( y => fun(1) )
class is (t2)
  y%i = 2 
end select

contains

  function fun(i)
    class(t1),pointer :: fun
    integer :: i
    if (i>0) then
      fun => x1
    else if (i<0) then
      fun => x2
    else
      fun => NULL()
    end if
  end function

end
