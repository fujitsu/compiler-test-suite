 call s1
 print *,'pass'
 end
 module m0
  interface maxval
    module procedure ww8,ww16,ww4,ww8m1,ww8m4,ww16m1,ww16m4,ww4m1,ww4m4
  end interface
  contains
   function ww16m4(c16,mask) result(r)
   complex(16),dimension(:,:,:,:,:,:),intent(in)::c16
   complex(8 ),dimension(:,:,:,:,:,:),intent(in)::c8
   complex(4 ),dimension(:,:,:,:,:,:),intent(in)::c4
   complex(16),dimension(:),pointer   ::c
   complex(16)::r
   logical(4),dimension(:,:,:,:,:,:),intent(in)::mask
   logical(4),dimension(:),pointer::mm
   allocate(c(size(c16)))
   c=(/c16/)
   goto 1
   entry ww8m4(c8,mask) result(r)
   allocate(c(size(c8)))
   c=(/c8/) 
   goto 1
   entry ww4m4(c4,mask) result(r)
   allocate(c(size(c4)))
   c=(/c4/) 
   goto 1
1  continue
   allocate(mm(size(c)))
   mm=(/mask/)
   r=0
   do if=1,size(c)
      if (.not.mm(if))cycle
      r=max(real(c(if)),real(r))
      r=cmplx(real(r),real(r))
   end do
   end function
   function ww16m1(c16,mask) result(r)
   complex(16),dimension(:,:,:,:,:,:),intent(in)::c16
   complex(8 ),dimension(:,:,:,:,:,:),intent(in)::c8
   complex(4 ),dimension(:,:,:,:,:,:),intent(in)::c4
   complex(16),dimension(:),pointer   ::c
   complex(16)::r
   logical(1),dimension(:,:,:,:,:,:),intent(in)::mask
   logical(1),dimension(:),pointer::mm
   allocate(c(size(c16)))
   c=(/c16/)
   goto 1
   entry ww8m1(c8,mask) result(r)
   allocate(c(size(c8)))
   c=(/c8/) 
   goto 1
   entry ww4m1(c4,mask) result(r)
   allocate(c(size(c4)))
   c=(/c4/) 
   goto 1
1  continue
   allocate(mm(size(c)))
   mm=(/mask/)
   r=0
   do if=1,size(c)
      if (.not.mm(if))cycle
      r=max(real(c(if)),real(r))
      r=cmplx(real(r),real(r))
   end do
   end function
   function ww16(c16) result(r)
   complex(16),dimension(:,:,:,:,:,:),intent(in)::c16
   complex(8 ),dimension(:,:,:,:,:,:),intent(in)::c8
   complex(4 ),dimension(:,:,:,:,:,:),intent(in)::c4
   complex(16),dimension(:),pointer   ::c
   complex(16)::r
   allocate(c(size(c16)))
   c=(/c16/)
   goto 1
   entry ww8(c8) result(r)
   allocate(c(size(c8 )))
   c=(/c8 /)
   goto 1
   entry ww4(c4) result(r)
   allocate(c(size(c4 )))
   c=(/c4 /)
   goto 1
1  continue
   r=0
   do if=1,ubound(c,1)
      r=max(real(c(if)),real(r))
      r=cmplx(real(r),real(r))
   end do
   end function
end
 subroutine s1
 integer,parameter::k1=1,k2=2,k3=3
 logical(1),dimension(1,1,1,1,2,3)::a1
 logical(4),dimension(1,1,1,1,2,3)::a2
 real(16)  ,dimension(1,1,1,1,2,3)::b1,c1=reshape((/1,2,3,4,5,6/),(/1,1,1,1,2,3/))
 integer(8),dimension(1,1,1,1,2,3)::b2,c2=reshape((/1,2,3,4,5,6/),(/1,1,1,1,2,3/))
 complex(16),dimension(1,1,1,1,2,3)::b3,c3=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/1,1,1,1,2,3/))
 integer(4)::v1(2)=(/1,2/),v2(3)=(/1,2,3/)
 call ss1(k1,k2,k3,a1,a2,b1,b2,b3,c1,c2,c3,v1,v2)
 end
 subroutine &
      ss1(k1,k2,k3,a1,a2,b1,b2,b3,c1,c2,c3,v1,v2)
 usem0
 logical(1),dimension(k1,k1,k1,k1,k2,k3)::a1
 logical(4),dimension(k1,k1,k1,k1,k2,k3)::a2
 real(16)  ,dimension(k1,k1,k1,k1,k2,k3)::b1,c1
 integer(8),dimension(k1,k1,k1,k1,k2,k3)::b2,c2
 complex(16),dimension(k1,k1,k1,k1,k2,k3)::b3,c3
 integer(4)::v1(k2),v2(k3)
 mm1=ubound(a1,6); mm2=ubound(a1,5)
 do n=lbound(a1,5),lbound(a1,6)
 a2=.false.;ik=0
 b1=-99;b2=-99;b3=-99
 do i2=1,mm1; do i1=1,mm2
   b1(n,n,n,n,i1,i2)=c1(n,n,n,n,i1,i2)
   b2(n,n,n,n,i1,i2)=c2(n,n,n,n,i1,i2)
   b3(n,n,n,n,i1,i2)=c3(n,n,n,n,i1,i2)
   a2(n,n,n,n,i1,i2)=.true.;ik=ik+1;ij=maxval((/(i,i=1,ik)/))
  if (ij/=ik)print *,'fail'
   if (cmplx(ij,ij)==maxval(b3(:,:,:,:,:,:),mask=a2(:,:,:,:,:,:))) then;else ;print *,'fail';endif
   if (ij==maxval(b1(:,:,:,:,v1(1):v1(2),v2(1):v2(3)) &
                 ,mask=a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   if (ij/=maxval(b2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)) &
                 ,mask=a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)))) then;print *,'fail';else ;endif
   if (cmplx(ij,ij)==maxval(b3(:,:,:,:,v1(1):v1(2),v2(1):v2(3)) &
                           ,mask=a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)))) then;else ;print *,'fail';endif
   if (ij==maxval(b1(:,:,:,:,v1,v2) ,mask=a2(:,:,:,:,v1,v2))) then;else ;print *,'fail';endif
   if (ij/=maxval(b2(:,:,:,:,v1,v2),mask=a2(:,:,:,:,v1,v2))) then;print *,'fail';else ;endif
   if (cmplx(ij,ij)==maxval(b3(:,:,:,:,v1,v2),mask=a2(:,:,:,:,v1,v2))) then;else ;print *,'fail';endif
   if (ij==maxval(        reshape((/b1(n,n,n,n,1,1),b1(n,n,n,n,2,1),b1(n,n,n,n,1,2),b1(n,n,n,n,2,2),b1(n,n,n,n,1,3),b1(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)) &
                 ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)))) then;else ;print *,'fail';endif
   if (ij/=maxval(        reshape((/b2(n,n,n,n,1,1),b2(n,n,n,n,2,1),b2(n,n,n,n,1,2),b2(n,n,n,n,2,2),b2(n,n,n,n,1,3),b2(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)) &
                 ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)))) then;print *,'fail';else ;endif
   if (cmplx(ij,ij)==maxval(        reshape((/b3(n,n,n,n,1,1),b3(n,n,n,n,2,1),b3(n,n,n,n,1,2),b3(n,n,n,n,2,2),b3(n,n,n,n,1,3),b3(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)) &
                           ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,2,3/)))) then;else ;print *,'fail';endif
   if (ij==maxval(b1*k1,mask=a2.and.a2)) then;else ;print *,'fail';endif
   if (ij/=maxval(b2*k1,mask=a2.and.a2)) then;print *,'fail';else ;endif
   if (cmplx(ij*k1,ij*k1)==maxval(b3,mask=a2.and.a2)) then;else ;print *,'fail';endif
   if (ij==maxval(b1(:,:,:,:,:,:)*k1,mask=a2(:,:,:,:,:,:).and.a2(:,:,:,:,:,:))) then;else ;print *,'fail';endif
   if (ij/=maxval(b2(:,:,:,:,:,:)*k1,mask=a2(:,:,:,:,:,:).and.a2(:,:,:,:,:,:))) then;print *,'fail';else ;endif
   if (cmplx(ij,ij)==maxval(b3(:,:,:,:,:,:)*k1,mask=a2(:,:,:,:,:,:).and.a2(:,:,:,:,:,:))) then;else ;print *,'fail';endif
   if (ij==maxval(b1(:,:,:,:,v1,v2)*k1,mask=a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2))) then;else ;print *,'fail';endif
   if (ij/=maxval(b2(:,:,:,:,v1,v2)*k1,mask=a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2))) then;print *,'fail';else ;endif
   if (cmplx(ij,ij)==maxval(b3(:,:,:,:,v1,v2)*k1,mask=a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2))) then;else ;print *,'fail';endif
 end do; end do
 if (6==count(a2)) then;else ;print *,'fail';endif
 if (6/=count(a2)) then;print *,'fail';else ;endif
 a2=.false.;ik=0
 b1=0;b2=0;b3=0
 do i2=1,mm1; do i1=1,mm2
   b1(n,n,n,n,i1,i2)=c1(n,n,n,n,i1,i2)
   b2(n,n,n,n,i1,i2)=c2(n,n,n,n,i1,i2)
   b3(n,n,n,n,i1,i2)=c3(n,n,n,n,i1,i2)
   a2(n,n,n,n,i1,i2)=.true.;ik=ik+1;ij=maxval((/(i,i=1,ik)/))
 end do; end do
 if (6==count(a2)) then;else ;print *,'fail';endif
 if (6/=count(a2)) then;print *,'fail';else ;endif
 end do
 end
