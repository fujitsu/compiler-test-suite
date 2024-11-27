 call s1
 print *,'pass'
 end
 subroutine s1
 call ss1
 call ss2
 end
 subroutine ss1
 integer ,allocatable,dimension(:,:,:,:,:,:)::a1
  type x
 integer ::am(3,4,5,2)=reshape((/(i,i=1,120)/),(/3,4,5,2/))
  end type
  type(x),pointer::w
!
 allocate (a1(2,3,4,5,2,10))
 allocate (w)
 iz2=2
!
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(1,ii,ix,jj,jx,1)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,2)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,3)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,4)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,5)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,6)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,7)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,8)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,9)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,10)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,1)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,2)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,3)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,4)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,5)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,6)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,7)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,8)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,9)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,10)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
 subroutine ss2
 integer ,allocatable,dimension(:,:,:,:,:,:)::a1
  type x
 integer ::am(3,4,5,2)=reshape((/(i,i=1,120)/),(/3,4,5,2/))
  end type
  type(x),pointer::w
!
 allocate (a1(2,3,4,5,2,10))
 allocate (w)
 iz2=2
!
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(1,ii,ix,jj,jx,1)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,2)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,3)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,4)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,5)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,6)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(1,ii,ix,jj,jx,7)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,8)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,9)= w%am(ii,ix,jj,jx)
   a1(1,ii,ix,jj,jx,10)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,1)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,2)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,3)= w%am(ii,ix,jj,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,4)= w%am(ii,ix,jj,jx)
   a1(iz,ii,ix,jj,jx,5)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 forall (ii=1:size(a1,2),jj=1:size(a1,4))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,6)= w%am(ii,ix,jj,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,7)= w%am(ii,ix,jj,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,8)= w%am(ii,ix,jj,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,9)= w%am(ii,ix,jj,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(iz,ii,ix,jj,jx,10)= w%am(ii,ix,jj,jx)
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
 
