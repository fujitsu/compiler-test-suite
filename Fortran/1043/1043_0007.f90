module test_01a
 intrinsic :: int
 integer,external :: sin
 integer,private :: k =200
 integer :: iii=100,zzz
 integer :: VVV=100,x1
equivalence (VVV,x1)
 common /com/ x1
 type ty1
    integer :: aaa(10)
 end type
 contains
 function ifun(i,j)
   ifun = i+j+k
 end function
end module
module test_01b
 use test_01a,only:iii,ifun,ty1,int,sin,VVV
 private jjjj
end module
module test_01c
 use test_01b,only:iii,ifun,ty1,int,sin,VVV
 private kkss
end module
module test_01d
 use test_01b,only:iii,ifun,ty1,int,sin
 private sss
end module
module test_01e
 use test_01a,only:nnn6=>iii
 use test_01c
 use test_01d,only:iii,ifun,ty1,int,sin
 use test_01b,only:nnn1=>iii
 use test_01b,only:nnn5=>iii,vvv1=>VVV
 private zzz
end module
use test_01e
use test_01e
type(ty1) :: a
a=ty1(2)
if(302.ne.ifun(a%aaa(1),sin(int(iii)))) write(6,*) "NG"
if (100.ne.nnn1) write(6,*) "NG"
if (100.ne.nnn5) write(6,*) "NG"
print *,"pass"
end
function sin(iii)
integer :: sin
sin=iii
end function
