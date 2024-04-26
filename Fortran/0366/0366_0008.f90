 program digits
 integer*4,parameter::low=1,upper=10000
 integer*1 test1
 integer*2 test2
 integer*4 test3
 integer*8 test4
 real*4 test5
 real*8 test6
 real*16 test7
 print *, test1(low,upper)
 print *, test2(low,upper)
 print *, test3(low,upper)
 print *, test4(low,upper)
 print *, test5(low,upper)
 print *, test6(low,upper)
 print *, test7(low,upper)
 end
 integer*1 function test1(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 integer*1 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=digits(t)
 enddo
 test1=sum(ans)
 end
 integer*2 function test2(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 integer*2 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=digits(t)
 enddo
 test2=sum(ans)
 end
 integer*4 function test3(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 integer*4 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=digits(t)
 enddo
 test3=sum(ans)
 end
 integer*8 function test4(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 integer*8 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=digits(t)
 enddo
 test4=sum(ans)
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*4 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=digits(t)
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
 ans(i)=digits(t)
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
 ans(i)=digits(t)
 enddo
 test7=sum(ans)
 end
