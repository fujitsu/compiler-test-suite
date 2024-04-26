 program minexponent
 integer*4,parameter::low=-10000,upper=10000
 real*4 test5
 real*8 test6
 real*16 test7
 print *, test5(low,upper)
 print *, test6(low,upper)
 print *, test7(low,upper)
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*4 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=minexponent(t)
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
 ans(i)=minexponent(t)
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
 ans(i)=minexponent(t)
 enddo
 test7=sum(ans)
 end
