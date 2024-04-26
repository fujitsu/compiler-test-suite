 program precision
 integer*4,parameter::low=-10000,upper=10000
 real*4 test5
 real*8 test6
 real*16 test7
 complex*8 test8
 complex*16 test9
 complex*32 test10
 print *, test5(low,upper)
 print *, test6(low,upper)
 print *, test7(low,upper)
 print *, test8(low,upper)
 print *, test9(low,upper)
 print *, test10(low,upper)
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*4 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test5=sum(ans)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*8 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test6=sum(ans)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*16 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test7=sum(ans)
 end
 complex*8 function test8(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 complex*8 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test8=sum(ans)
 end
 complex*16 function test9(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 complex*16 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test9=sum(ans)
 end
 complex*32 function test10(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 complex*32 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=precision(t)
 enddo
 test10=sum(ans)
 end
