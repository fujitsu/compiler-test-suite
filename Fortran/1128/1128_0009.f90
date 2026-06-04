 call s1
 print *,'pass'
 end
 subroutine s1
 parameter(k2=2,k3=3)
 character,dimension(:,:)::a1,aa1
 complex  ,dimension(:,:)::a2,aa2
 pointer a1,a2,aa1,aa2
 allocate(aa1(k2*2,k3*2),aa2(k2*2,k3*2))
 a1=>aa1(k2::2,2::2); a2=>aa2(k2::2,2::2)
 call ss1(a1,a2,k2,k3)
 contains
 subroutine ss1(a1,a2,k2,k3)
 character(k3-k2),dimension(:,:)::a1
 complex  ,dimension(:,:)::a2
 pointer a1,a2
 integer(4)::v1(k2),v2(k3)
 v1=(/1,2/);v2=(/1,2,3/)
 a1='y'
 do i2=1,ubound(a1,k2); do i1=1,ubound(a1,1)
   a1(i1,i2)='x'
   if (.not.all('x'==a1)) then;else ;print *,'fail';endif
   if (     all('x'==a1)) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(:,:))) then;else ;print *,'fail';endif
   if (     all('x'==a1(:,:))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   if (     all('x'==a1(v1(1):v1(2),v2(1):v2(3)))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(v1,v2))) then;else ;print *,'fail';endif
   if (     all('x'==a1(v1,v2))) then;print *,'fail';else ;endif
   if (.not.all('x'==(/a1(v1,v2)/))) then;else ;print *,'fail';endif
   if (     all('x'==(/a1(v1,v2)/))) then;print *,'fail';else ;endif
   if (.not.all('x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/))) then;else ;print *,'fail';endif
   if (     all('x'==(/a1(1,1),a1(2,1),a1(1,2),a1(2,2),a1(1,3),a1(2,3)/))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1.and.'x'==a1)) then;else ;print *,'fail';endif
   if (     all('x'==a1.and.'x'==a1)) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(:,:).and.'x'==a1(:,:))) then;else ;print *,'fail';endif
   if (     all('x'==a1(:,:).and.'x'==a1(:,:))) then;print *,'fail';else ;endif
   if (.not.all('x'==a1(v1(1):v1(2),v2(1):v2(3)).and.&
                'x'==a1(v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   a1(i1,i2)='y'
   if (.not.all('y'==a1))print *,'fail'
 end do; end do
 if (     all('y'==a1)) then;else ;print *,'fail';endif
 if (.not.all('y'==a1)) then;print *,'fail';else ;endif
!
 end subroutine
 end
