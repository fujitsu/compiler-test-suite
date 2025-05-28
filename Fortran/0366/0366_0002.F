#define EQUAL_CHECK_WITH_MARGIN_REAL8(a, b) ((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-16))
#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-34))
 program acos
 integer*4,parameter::low=-1000,upper=1000
 real*4 test5
 real*8 test6
 real*16 test7
 real*4,parameter:: res51 = 3143.16333
 real*4,parameter:: res52 = 3143.16357
 real*8,parameter:: res6  = 3143.163449916589d0
 real*16,parameter:: res7 = 3143.1634499165881350818747049711453q0
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
 t = i/1000.0e+0
 ans(i)=acos(t)
 enddo
 test5=sum(ans,mask=.TRUE.)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*8 t,ans(low:upper)
 do i=low,upper
 t = i/1000.0d+0
 ans(i)=acos(t)
 enddo
 test6=sum(ans,mask=.TRUE.)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*16 t,ans(low:upper)
 do i=low,upper
 t = i/1000.0q+0
 ans(i)=acos(t)
 enddo
 test7=sum(ans,mask=.TRUE.)
 end
