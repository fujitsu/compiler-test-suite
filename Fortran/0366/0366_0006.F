#define EQUAL_CHECK_WITH_MARGIN_REAL4(a, b)((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-8))
#define EQUAL_CHECK_WITH_MARGIN_REAL8(a, b) ((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-16))
#define EQUAL_CHECK_WITH_MARGIN_REAL16(a, b) ((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-34))
 program atan
 integer*4,parameter::low=1,upper=10000
 real*4,parameter:: res51 = 15698.4512
 real*4,parameter:: res52 = 15696.7090
 real*8,parameter:: res6 = 15698.451237255724d0
 real*16,parameter:: res7 = 15698.451237255689309708423085678900q0
 real*4 test5
 real*8 test6
 real*16 test7
 if( .NOT. EQUAL_CHECK_WITH_MARGIN_REAL4(res51, test5(low,upper)) ) then
   print *,"NG1"      
 endif
 if( .NOT. EQUAL_CHECK_WITH_MARGIN_REAL4(res52, test5(low,upper)) ) then
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
 t = i
 ans(i)=atan(t)
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
 ans(i)=atan(t)
 enddo
 test6=sum(ans,mask=.TRUE.)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i
 integer*4 low,upper
 real*16 t,ans(low:upper)
 do i=low,upper
 t = i
 ans(i)=atan(t)
 enddo
 test7=sum(ans,mask=.TRUE.)
 end
