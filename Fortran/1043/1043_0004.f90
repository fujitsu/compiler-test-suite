module test_01a
 integer,private :: k =200
 integer :: iii=100
 type ty1
    integer :: aaa(10)
 end type
 contains
 function ifun(i,j)
   ifun = i+j+k
 end function
end module
module test_01b
 use test_01a,only:iii,ifun,ty1
end module
module test_01c
 use test_01b,only:iii,ifun,ty1
end module
module test_01d
 use test_01b,only:iii,ifun,ty1
end module
module test_01e
 use test_01c
 use test_01d,only:iii,ifun,ty1
end module
use test_01e
type(ty1) :: a
a=ty1(2)
if(302.ne.ifun(a%aaa(1),iii)) write(6,*) "NG"
print *,"pass"
end
