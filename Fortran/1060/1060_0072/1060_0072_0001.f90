function f1(rarg)
character*(10) f1
character*(10) f2
 f1 = "000"
 if (rarg .ne. 1.0) stop '2-1'
 return 
entry    f2(iarg)
 f2 = "111"
 if (iarg .ne. 2) stop '2-2'
end function
