function f1() result(rf)
character*(*) rf
 rf = "000"
 return 
entry    f2() result(rf)
 rf = "111"
end function
