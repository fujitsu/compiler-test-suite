 program acosd
 integer*4,parameter::low=1,upper=10000
 real*4 test5
 real*8 test6
 real*16 test7
 real*4,parameter:: res51 = 572912.625
 real*4,parameter:: res52 = 572911.750
 real*8,parameter:: res6  = 572912.6271610903d0
 real*16,parameter:: res7 = 572912.62716109172740764791169211373q0
 if( test5(low,upper) /= res51 .and. test5(low,upper) /= res52 ) then
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
 t = i/10000.0
 ans(i)=acosd(t)
 enddo
 test5=sum(ans,mask=.TRUE.)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*8 t,ans(low:upper)
 do i=low,upper
 t = i/10000.0d0
 ans(i)=acosd(t)
 enddo
 test6=sum(ans,mask=.TRUE.)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*16 t,ans(low:upper)
 do i=low,upper
 t = i/10000.0q0
 ans(i)=acosd(t)
 enddo
 test7=sum(ans,mask=.TRUE.)
 end
