interface
  function f(d1)
  integer ,optional,allocatable :: d1
  end function
end interface
print*, f(NULL())
end program
function f(d1)
integer ,optional,allocatable :: d1
f=d1
end function
