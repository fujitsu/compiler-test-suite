 program floor
 integer*4,parameter::low=1,upper=10000
 real*4 test5
 real*8 test6
 real*16 test7
 real*4,parameter:: res51 = 50005000.0
 real*4,parameter:: res52 = 50002896.0
 real*8,parameter:: res6 = 50005000.00000000d0
 real*16,parameter:: res7 = 50005000.000000000000000000000000000q0
 if( test5(low,upper) /= res51 .and. test5(low,upper) /= res52  ) then
   print *,"NG1"
 endif 
 if( test6(low,upper) /= res6  ) print *,"NG2"
 if( test7(low,upper) /= res7  ) print *,"NG3"
 print *,"PASS"
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*4 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=floor(t)
 enddo
 test5=sum(ans,mask=.TRUE.)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*8 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=floor(t)
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
 ans(i)=floor(t)
 enddo
 test7=sum(ans)
 end
