subroutine foo08
interface
 function af() result(r)
  integer r(2)
end function
end interface
integer::a(2)
a= af()
end
 function af() result(r)
  integer r(2)
  r=[1,2]
end function

print *,'pass'
end
