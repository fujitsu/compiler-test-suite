interface
 function proc1(x) result(y)
  integer :: x,y
 end function
 function func(i) result(j)
  interface
   function proc2(x) result(y)
    integer :: x,y
   end function
  end interface
  procedure(proc2), pointer :: j
  integer :: i
 end function
 function func2(i) result(j)
  interface
   function proc2(x) result(y)
    integer :: x,y
   end function
  end interface
  procedure(proc2), pointer :: i
  integer :: j
 end function
 function proc2(x) result(y)
  integer :: x,y
 end function
end interface

integer :: i

procedure(proc1),pointer :: p
p => func(i)
i = func2(func(i))

if (i.ne.1) print *,'fail'

print *,'pass'

end

function proc1(x) result(y)
 integer :: x,y
 y=x
end function

function proc2(x) result(y)
 integer :: x,y
 y=x
end function

function func(i) result(j)
 interface
  function proc2(x) result(y)
   integer :: x,y
  end function
 end interface
 procedure(proc2), pointer :: j
 integer :: i
 i=1
 j=>proc2
end function

function func2(i) result(j)
 interface
  function proc2(x) result(y)
   integer :: x,y
  end function
 end interface
 procedure(proc2), pointer :: i
 integer :: j,k=1
 i => proc2
 j=i(k)
end function
