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
 module m1
  use m0
  integer ik
  interface zz
   module procedure zis,zrs,zcs
  end interface
  contains
  subroutine zis(ij,i)
  integer,intent(in)::ij
  integer(8),intent(in)::i
  dimension i(:,:,:,:,:,:,:)
  if (size(i)/=ik)print *,'fail'
  if (any(ij+(/(ii,ii=1,ik)/)/=(/i/)))print *,'fail'
  end subroutine
  subroutine zrs(ij,i)
  integer ,intent(in)::ij
  real(16)  ,intent(in)::i
  dimension i(:,:,:,:,:,:,:)
  if (size(i)/=ik)print *,'fail'
  if (any(ij+(/(ii,ii=1,ik)/)/=(/i/)))print *,'fail'
  end subroutine
  subroutine zcs(ij,i)
  integer ,intent(in)::ij
  complex(16),intent(in)::i
  dimension i(:,:,:,:,:,:,:)
  if (size(i)/=ik)print *,'fail'
  if (any(cmplx(ij,ij)+(/(ii,ii=1,ik)/)/=(/i/)))print *,'fail'
  end subroutine
 end
 subroutine s1
 use m1
 integer,parameter::k1=1,k2=2,k3=3
 logical(1),dimension(2,2,2,2,4,6)::a1
 logical(4),dimension(2,2,2,2,4,6)::a2
 real(16)  ,dimension(2,2,2,2,4,6)::b1,c1
 integer(8),dimension(2,2,2,2,4,6)::b2,c2
 complex(16),dimension(2,2,2,2,4,6)::b3,c3
 integer(4)::v1(2*2),v2(3*2)
!
 c1(2::2,2::2,2::2,2::2,2::2,2::2)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,2,3/))
 c2(2::2,2::2,2::2,2::2,2::2,2::2)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,2,3/))
 c3(2::2,2::2,2::2,2::2,2::2,2::2)=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/1,1,1,1,2,3/))
 v1(2::2)=(/1,2/);v2(2::2)=(/1,2,3/)
 call ss1(k1,k2,k3, &
   a1(2::2,2::2,2::2,2::2,2::2,2::2), &
   a2(2::2,2::2,2::2,2::2,2::2,2::2), &
   b1(2::2,2::2,2::2,2::2,2::2,2::2), &
   b2(2::2,2::2,2::2,2::2,2::2,2::2), &
   b3(2::2,2::2,2::2,2::2,2::2,2::2), &
   c1(2::2,2::2,2::2,2::2,2::2,2::2), &
   c2(2::2,2::2,2::2,2::2,2::2,2::2), &
   c3(2::2,2::2,2::2,2::2,2::2,2::2),v1(2::2),v2(2::2))
 contains
 subroutine &
      ss1(k1,k2,k3,a1,a2,b1,b2,b3,c1,c2,c3,v1,v2)
 logical(1),dimension(:,:,:,:,:,:)::a1
 logical(4),dimension(:,:,:,:,:,:)::a2
 real(16)  ,dimension(:,:,:,:,:,:)::b1,c1
 integer(8),dimension(:,:,:,:,:,:)::b2,c2
 complex(16),dimension(:,:,:,:,:,:)::b3,c3
 integer(4)::v1(:),v2(:)
!
 mm1=ubound(a1,6); mm2=ubound(a1,5)
!
 do n=lbound(a1,5),lbound(a1,6)
!
!
 a2=.false.;ik=0
 b1=-99;b2=-99;b3=-99
 do i2=1,mm1; do i1=1,mm2
   b1(n,n,n,n,i1,i2)=c1(n,n,n,n,i1,i2)
   b2(n,n,n,n,i1,i2)=c2(n,n,n,n,i1,i2)
   b3(n,n,n,n,i1,i2)=c3(n,n,n,n,i1,i2)
   a2(n,n,n,n,i1,i2)=.true.;ik=ik+1;ij=maxval(reshape((/(i,i=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/)))
  if (ij/=ik)print *,'fail'
!
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b1,mask=reshape((/a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)).and.&
                a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3))/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b2,mask=reshape((/a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)).and.&
                a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3))/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b3,mask=reshape((/a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3)).and.&
                a2(:,:,:,:,v1(1):v1(2),v2(1):v2(3))/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b1,mask=reshape((/a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b2,mask=reshape((/a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b3,mask=reshape((/a2(:,:,:,:,v1,v2).and.a2(:,:,:,:,v1,v2)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b1,mask=reshape((/(/a2(:,:,:,:,v1,v2)/).and.(/a2(:,:,:,:,v1,v2)/)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b2,mask=reshape((/(/a2(:,:,:,:,v1,v2)/).and.(/a2(:,:,:,:,v1,v2)/)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b3,mask=reshape((/(/a2(:,:,:,:,v1,v2)/).and.(/a2(:,:,:,:,v1,v2)/)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b1,mask=reshape((/(/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/).and.&
                (/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b2,mask=reshape((/(/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/).and.&
                (/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(b3,mask=reshape((/(/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/).and.&
                (/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/)/),(/1,1,1,1,k2,k3/))))
!
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(        reshape((/b1(n,n,n,n,1,1),b1(n,n,n,n,2,1),b1(n,n,n,n,1,2),b1(n,n,n,n,2,2),b1(n,n,n,n,1,3),b1(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/)) &
                 ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(        reshape((/b2(n,n,n,n,1,1),b2(n,n,n,n,2,1),b2(n,n,n,n,1,2),b2(n,n,n,n,2,2),b2(n,n,n,n,1,3),b2(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/)) &
                 ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/))))
   call zz(ij,reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/))+maxval(        reshape((/b3(n,n,n,n,1,1),b3(n,n,n,n,2,1),b3(n,n,n,n,1,2),b3(n,n,n,n,2,2),b3(n,n,n,n,1,3),b3(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/)) &
                           ,mask=reshape((/a2(n,n,n,n,1,1),a2(n,n,n,n,2,1),a2(n,n,n,n,1,2),a2(n,n,n,n,2,2),a2(n,n,n,n,1,3),a2(n,n,n,n,2,3)/),(/1,1,1,1,k2,k3/))))
 end do; end do
 if (6/=count(a2)) print *,'fail'
!
 a2=.false.;ik=0
 b1=0;b2=0;b3=0
 do i2=1,mm1; do i1=1,mm2
   b1(n,n,n,n,i1,i2)=c1(n,n,n,n,i1,i2)
   b2(n,n,n,n,i1,i2)=c2(n,n,n,n,i1,i2)
   b3(n,n,n,n,i1,i2)=c3(n,n,n,n,i1,i2)
   a2(n,n,n,n,i1,i2)=.true.;ik=ik+1;ij=maxval(reshape((/((i,i=k1,ik),ij=k1,ik)/),(/k1,k1,k1,k1,k1,k1,ik/)))
  if (ij/=ik)print *,'fail'
!
 end do; end do
 if (6/=count(a2)) print *,'fail'
!
 end do
 end subroutine
 end
