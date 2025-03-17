module test_01a0
 integer :: iii=100
end module
module test_01a
 interface operator(-)
  function ifun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: iii=100
end module
function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function
module test_01b
 use test_01a,only:operator(-)
end module
module test_01c
 use test_01a,only:operator(-)
end module
module test_01d
 use test_01a0
 use test_01b,only:operator(-)
 use test_01c,only:operator(-)
end module
use test_01d
if(197.ne.(iii-"a")) write(6,*) "NG"
print *,"pass"
end
