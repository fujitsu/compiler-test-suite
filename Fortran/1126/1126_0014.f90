 call s1
 print *,'pass'
 end
 subroutine s1
 parameter(k1=1,k2=2,k3=3)
 character,dimension(:,:,:,:,:)::a1,aa1
 complex  ,dimension(:,:,:,:,:)::a2,aa2
 pointer a1,a2,aa1,aa2
 allocate(aa1(k1*2,2*k1,2*k1,2*k2,2*k3))
 allocate(aa2(2*k1,2*k1,2*k1,2*k2,2*k3))
 a1=>aa1(2::2,2::2,2::2,2::2,2::2); a2=>aa2(2::2,2::2,2::2,2::2,2::2)
 call ss1 (k1,k2,k3,a1,a2)
 contains
 subroutine ss1(k1,k2,k3,a1,a2)
 pointer a1,a2
 character(*),dimension(:,:,:,:,:)::a1
 complex  ,dimension(:,:,:,:,:)::a2
 integer(4)::v1(k2),v2(k3)
 v1=(/1,2/);v2=(/1,2,3/)
 do j=1,k1
 a1='y'
 ik=0
 do i2=k1,ubound(a1,5); do i1=k1,ubound(a1,4)
   a1(j,j,j,i1,i2)='x';ik=ik+1
   if (     ik==count('x'==a1)) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1)) then;print *,'fail';else ;endif
   if (     ik==count('x'==a1(j,j,j,:,:))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1(j,j,j,:,:))) then;print *,'fail';else ;endif
   if (     ik==count('x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1(j,j,j,v1(1):v1(2),v2(1):v2(3)))) then;print *,'fail';else ;endif
   if (     ik==count('x'==a1(j,j,j,v1,v2))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1(j,j,j,v1,v2))) then;print *,'fail';else ;endif
   if (     ik==count('x'==(/a1(j,j,j,v1,v2)/))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==(/a1(j,j,j,v1,v2)/))) then;print *,'fail';else ;endif
   if (     ik==count('x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==(/a1(j,j,j,1,1),a1(j,j,j,2,1),a1(j,j,j,1,2),a1(j,j,j,2,2),a1(j,j,j,1,3),a1(j,j,j,2,3)/))) then;print *,'fail';else ;endif
   if (     ik==count('x'==a1.and.'x'==a1)) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1.and.'x'==a1)) then;print *,'fail';else ;endif
   if (     ik==count('x'==a1(j,j,j,:,:).and.'x'==a1(j,j,j,:,:))) then;else ;print *,'fail';endif
   if (.not.ik==count('x'==a1(j,j,j,:,:).and.'x'==a1(j,j,j,:,:))) then;print *,'fail';else ;endif
   if (ik/=count('x'==a1))print *,'fail'
 end do; end do
 if (.not.ik/=count('x'==a1)) then;else ;print *,'fail';endif
 if (     ik/=count('x'==a1)) then;print *,'fail';else ;endif
 if (ik/=count('x'==a1).or.ik/=6)print *,'fail'
!
 a2=(0,0);ik=0
 do i2=1,ubound(a2,5); do i1=1,ubound(a2,4)
   a2(j,j,j,i1,i2)=(1,2);ik=ik+1
   if (ik/=count((1,2)==a2))print *,'fail'
 end do; end do
 if (.not.ik/=count((1,2)==a2)) then;else ;print *,'fail';endif
 if (     ik/=count((1,2)==a2)) then;print *,'fail';else ;endif
 if (ik/=count((1,2)==a2).or.ik/=6)print *,'fail'
!
 end do
 end subroutine
 end
