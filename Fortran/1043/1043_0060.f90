module test_01a
 interface operator(-)
  function ifun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: iii=100
end module
module test_01b
 interface operator(+)
  function ifun(i,j)
   intent(in) :: i,j
   character :: j
  end function
 end interface
 integer :: jjj=100
end module
function ifun(i,j)
 intent(in) :: i,j
 character :: j
 ifun=i+ichar(j)
end function
module test_01c
 use test_01a,only:operator(-),iii
end module
module test_01d
 use test_01a,only:operator(-),iii
 use test_01b,only:operator(+),jjj
end module
module test_01e
 use test_01c
 use test_01d,only:operator(+),jjj
end module
use test_01e
if(197.ne.(jjj+"a")) write(6,*) "NG"
print *,"pass"
end
