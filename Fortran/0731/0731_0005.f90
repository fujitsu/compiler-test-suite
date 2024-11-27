 module mod07
 integer,pointer :: a1,a2(:),a3
 integer ia,ib,ic
 data ic /777/
 private ic
 integer,pointer :: a4(:),a5,a6(:)
 integer,target :: b1,b2(10),b3,b4(10),b5,b6(10)
 data b1 /10/
 data b2 /1,2,3,4,5,6,7,8,9,10/
 data b3 /20/
 data b4 /21,22,23,24,25,26,27,28,29,30/
 data b5 /30/
 data b6 /31,32,33,34,35,36,37,38,39,40/
 end module
 module moda7
 use mod07,only:aa1=>a1,aa2=>a2,aa3=>a3,aa4=>a4,aa5=>a5,aa6=>a6
 end module
 module modb7
 use moda7
 use mod07,only:wa1=>a1,wa2=>a2,wa3=>a3,wa4=>a4,wa5=>a5,wa6=>a6
 end module
 module modc7
 use modb7
 use mod07
 end module
 use modc7
print *,'pass'
 end
