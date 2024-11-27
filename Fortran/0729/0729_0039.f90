 call s1
 print *,'pass'
 end
 subroutine s1
 write(1,1) 1.5e-11
 write(1,1) 1.5e-12
 write(1,1) 1.5e-13
1 format(1x ,f8.3)
 end
