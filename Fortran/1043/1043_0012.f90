module test_01a
 interface operator(*)
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
 use test_01a
end module
module test_01c
 use test_01b
end module
module test_01c2
 use test_01c
end module
module test_01d
 use test_01b
end module
module test_01d2
 use test_01d
 use test_01c
end module

module test_01e
 use test_01d2
 use test_01c2
 use test_01d
 use test_01c
end module
use test_01e
if(197.ne.(iii*"a")) write(6,*) "NG"
print *,"pass"
end
