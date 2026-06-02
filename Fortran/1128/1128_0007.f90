 call s1
 print *,'pass'
 end
 subroutine s1
 parameter(k1=1,k2=2,k3=3)
 character,dimension(k1,k1,k1,k2,k3)::a1
 complex  ,dimension(k1,k1,k1,k2,k3)::a2
 call ss1 (k1,k2,k3,a1,a2)
 end
 subroutine ss1(k1,k2,k3,a1,a2)
 character(*),dimension(k1,k1,k1,k2,k3)::a1
 complex  ,dimension(k1,k1,k1,k2,k3)::a2
 integer(4)::v1(k2),v2(k3)
 v1=(/1,2/);v2=(/1,2,3/)
 do j=1,k1
 a1='y'
 do i2=k1,ubound(a1,5); do i1=k1,ubound(a1,4)
   a1(j,j,j,i1,i2)='x'
   if (     all('x'==a1(j,j,j,:,:).and.'x'==a1(j,j,j,:,:))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)).and.&
                'x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   if (     all('x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)).and.&
                'x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(j,j,j,v1,v2).and.'x'==a1(j,j,j,v1,v2))) then;else ;print *,'fail';endif
   if (     all('x'==a1(j,j,j,v1,v2).and.'x'==a1(j,j,j,v1,v2))) then;print *,'fail';else ;endif
   if (.not.all('x'==(/a1(j,j,j,v1,v2)/).and.'x'==(/a1(j,j,j,v1,v2)/))) then;else ;print *,'fail';endif
   if (     all('x'==(/a1(j,j,j,v1,v2)/).and.'x'==(/a1(j,j,j,v1,v2)/))) then;print *,'fail';else ;endif
   if (.not.all('x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/).and.&
                'x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/))) then;else ;print *,'fail';endif
   if (     all('x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/).and.&
                'x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/))) then;print *,'fail';else ;endif
   if (.not.all((/'x'==a1(j,j,j,:,:).and.'x'==a1(j,j,j,:,:)/))) then;else ;print *,'fail';endif
   if (     all((/'x'==a1(j,j,j,:,:).and.'x'==a1(j,j,j,:,:)/))) then;print *,'fail';else ;endif
   a1(j,j,j,i1,i2)='y'
   if (.not.all('y'==a1))print *,'fail'
 end do; end do
 if (     all('y'==a1)) then;else ;print *,'fail';endif
 if (.not.all('y'==a1)) then;print *,'fail';else ;endif
!
 end do
 end
