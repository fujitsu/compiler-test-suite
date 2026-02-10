function f1(rarg) result(rf)
character*10 rf
 rf = "000"
 if (rarg .ne. 1.0) stop '2-1'
 return 
entry    f2(iarg) result(rf)
 rf = "111"
 if (iarg .ne. 2) stop '2-2'
end function
