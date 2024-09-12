#define EQUAL_CHECK_WITH_MARGIN_REAL8(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-16)
#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-34)
 program acos
 integer*4,parameter::low=-1000,upper=1000
 real*4 test5
 real*8 test6
 real*16 test7
 real*4,parameter:: res51 = 3141.57007
 real*4,parameter:: res52 = 3141.57178
!
 real*8,parameter::res6 = 3141.5700000000047d0
 real*16,parameter:: res7 = 3141.5699999999999999999999999999926q0
 if( test5(low,upper) /= res51 .and. test5(low,upper) /= res52 ) then
   print *,"NG1"
 endif
 if( .NOT. EQUAL_CHECK_WITH_MARGIN_REAL8(res6, test6(low,upper)) ) then
   print *,"NG2"
 endif
 if( .NOT. EQUAL_CHECK_WITH_MARGIN_REAL16(res7, test7(low,upper)) ) then
   print *,"NG3"
 endif
 print *,"PASS"
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*4 t,ans(low:upper)
 do i=low,upper
 t = i/1000.0
 ans(i)=asin(t)
 enddo
 test5=sum(ans+1.57,mask=.TRUE.)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*8 t,ans(low:upper)
 do i=low,upper
 t = i/1000.0d0
 ans(i)=asin(t)
 enddo
 test6=sum(ans+1.57d0,mask=.TRUE.)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*16 t,ans(low:upper)
 do i=low,upper
 t = i/1000.0q0
 ans(i)=asin(t)
 enddo
 test7=sum(ans+1.57q0,mask=.TRUE.)
 end
