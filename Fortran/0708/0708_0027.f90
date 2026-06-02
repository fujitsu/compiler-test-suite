 call s1
 print *,'pass'
 end
 subroutine s1
   type t
      integer x
   end type
   integer ::a11,a12,a13,a14(2)
   complex ::a21,a22,a23,a24(2)
   character:: a31,a32,a33,a34(2)
   type (t) :: a41,a42,a43,a44(2)
   integer ,parameter::c11=1,c41(2)=(/1,2/)
   complex ,parameter::c12=(1,2),c42(2)=(/(1,2),(3,4)/)
   character,parameter:: c13='1',c43(2)=(/'1','2'/)
   type (t) ,parameter:: c14=t(1),c44(2)=(/t(1),t(2)/)
   integer ::d11,d12,d13,d14(2)
   complex ::d21,d22,d23,d24(2)
   character:: d31,d32,d33,d34(2)
   type (t) :: d41,d42,d43,d44(2)
   pointer ::d11,d13(:)
   pointer ::d21,d23(:)
   pointer ::d31,d33(:)
   pointer ::d41,d43(:)
   target  ::d12,d14
   target  ::d22,d24
   target  ::d32,d34
   target  ::d42,d44
   pointer (b11,a11)
   pointer (b21,a21)
   pointer (b31,a31)
   pointer (b41,a41)
   pointer (b13,a13(2))
   pointer (b23,a23(2))
   pointer (b33,a33(2))
   pointer (b43,a43(2))
   d11=>d12
   d21=>d22
   d31=>d32
   d41=>d42
   d13=>d14
   d23=>d24
   d33=>d34
   d43=>d44
   b11=loc(a12)
   b21=loc(a22)
   b31=loc(a32)
   b41=loc(a42)
   b13=loc(a14)
   b23=loc(a24)
   b33=loc(a34)
   b43=loc(a44)
   a11=1    ;if (a12/=1)print *,'fail'
   a21=(1,2);if (a22/=(1,2))print *,'fail'
   a31='1'  ;if (a32/='1')print *,'fail'
   a41=t(1) ;if (a42%x/=1)print *,'fail'
   a13=1    ;if (any(a14/=1))print *,'fail'
   a23=(1,2);if (any(a24/=(1,2)))print *,'fail'
   a33='1'  ;if (any(a34/='1'))print *,'fail'
   a43=t(1) ;if (any(a44%x/=1))print *,'fail'
   a13=(/1,2/);if (any(a14/=(/1,2/)))print *,'fail'
   a23=(/(1,2),(3,4)/);if (any(a24/=(/(1,2),(3,4)/)))print *,'fail'
   a33=(/'1','2'/)  ;if (any(a34/=(/'1','2'/)))print *,'fail'
   a43=(/t(1),t(2)/) ;if (any(a44%x/=(/1,2/)))print *,'fail'
   d11=1    ;if (d12/=1)print *,'fail'
   d21=(1,2);if (d22/=(1,2))print *,'fail'
   d31='1'  ;if (d32/='1')print *,'fail'
   d41=t(1) ;if (d42%x/=1)print *,'fail'
   d13=1    ;if (any(d14/=1))print *,'fail'
   d23=(1,2);if (any(d24/=(1,2)))print *,'fail'
   d33='1'  ;if (any(d34/='1'))print *,'fail'
   d43=t(1) ;if (any(d44%x/=1))print *,'fail'
   d13=(/1,2/);if (any(d14/=(/1,2/)))print *,'fail'
   d23=(/(1,2),(3,4)/);if (any(d24/=(/(1,2),(3,4)/)))print *,'fail'
   d33=(/'1','2'/)  ;if (any(d34/=(/'1','2'/)))print *,'fail'
   d43=(/t(1),t(2)/) ;if (any(d44%x/=(/1,2/)))print *,'fail'
   a11=c11  ;if (a12/=1)print *,'fail'
   a21=c12  ;if (a22/=(1,2))print *,'fail'
   a31=c13  ;if (a32/='1')print *,'fail'
   a41=c14  ;if (a42%x/=1)print *,'fail'
   a13=c11  ;if (any(a14/=1))print *,'fail'
   a23=c12  ;if (any(a24/=(1,2)))print *,'fail'
   a33=c13  ;if (any(a34/='1'))print *,'fail'
   a43=c14  ;if (any(a44%x/=1))print *,'fail'
   a13=c41    ;if (any(a14/=(/1,2/)))print *,'fail'
   a23=c42            ;if (any(a24/=(/(1,2),(3,4)/)))print *,'fail'
   a33=c43          ;if (any(a34/=(/'1','2'/)))print *,'fail'
   a43=c44           ;if (any(a44%x/=(/1,2/)))print *,'fail'
   d11=c11  ;if (d12/=1)print *,'fail'
   d21=c12  ;if (d22/=(1,2))print *,'fail'
   d31=c13  ;if (d32/='1')print *,'fail'
   d41=c14  ;if (d42%x/=1)print *,'fail'
   d13=c11  ;if (any(d14/=1))print *,'fail'
   d23=c12  ;if (any(d24/=(1,2)))print *,'fail'
   d33=c13  ;if (any(d34/='1'))print *,'fail'
   d43=c14  ;if (any(d44%x/=1))print *,'fail'
   d13=c41    ;if (any(d14/=(/1,2/)))print *,'fail'
   d23=c42            ;if (any(d24/=(/(1,2),(3,4)/)))print *,'fail'
   d33=c43          ;if (any(d34/=(/'1','2'/)))print *,'fail'
   d43=c44           ;if (any(d44%x/=(/1,2/)))print *,'fail'
   end
