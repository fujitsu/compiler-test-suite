 call s1
 print *,'pass'
 end
 subroutine s1
 parameter(k2=2,k3=3)
 character,dimension(k2,k3)::a1
 complex  ,dimension(k2,k3)::a2
 integer ::kk(2)=(/2,3/)
 call ss1(a1,a2,k2,k3,kk)
 end
 subroutine ss1(a1,a2,k2,k3,kk)
 character(k3-k2),dimension(k2,k3)::a1
 complex  ,dimension(k2,k3)::a2
 integer(4)::v1(k2),v2(k3),kk(2)
 v1=(/1,2/);v2=(/1,2,3/)
 a1='y'
 do i2=1,ubound(a1,k2); do i1=1,ubound(a1,1)
   a1(i1,i2)='x'
   if (     any(reshape(shape=kk,source=(/'x'==a1(v1,v2).and.'x'==a1(v1,v2)/)))) then;else ;print *,'fail';endif
   if (.not.any(reshape(shape=kk,source=(/'x'==a1(v1,v2).and.'x'==a1(v1,v2)/)))) then;print *,'fail';else ;endif
   if (     any(reshape(shape=kk,source=(/'x'==(/a1(v1,v2)/).and.'x'==(/a1(v1,v2)/)/)))) then;else ;print *,'fail';endif
   if (.not.any(reshape(shape=kk,source=(/'x'==(/a1(v1,v2)/).and.'x'==(/a1(v1,v2)/)/)))) then;print *,'fail';else ;endif
   if (     any(reshape(shape=kk,source=(/'x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/).and.&
                'x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/)/)))) then;else ;print *,'fail';endif
   if (.not.any(reshape(shape=kk,source=(/'x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/).and.&
                'x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/)/)))) then;print *,'fail';else ;endif
   a1(i1,i2)='y'
   if (any(reshape(shape=kk,source='x'==a1)))print *,'fail'
 end do; end do
 if (.not.any(reshape(shape=kk,source='x'==a1))) then;else ;print *,'fail';endif
 if (     any(reshape(shape=kk,source='x'==a1))) then;print *,'fail';else ;endif
 end
