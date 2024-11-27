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
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(1,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,3)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,5)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,6)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,7)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,8)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,9)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,10)= w%am(ii,ix,:,:)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,3)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,5)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,6)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,7)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,8)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,9)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,10)= w%am(ii,ix,:,:)
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
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(1,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,3)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,5)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,6)= w%am(ii,ix,:,:)
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(1,ii,ix,:,:,7)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,8)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,9)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,10)= w%am(ii,ix,:,:)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,3)= w%am(ii,ix,:,:)
 end forall
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,5)= w%am(ii,ix,:,:)
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,6)= w%am(ii,ix,:,:)
 end forall
 forall (ix=1:size(a1,3))
 end forall
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,7)= w%am(ii,ix,:,:)
 end forall
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,8)= w%am(ii,ix,:,:)
 end forall
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,9)= w%am(ii,ix,:,:)
 end forall
 forall (ix=1:size(a1,3))
   a1(iz,ii,ix,:,:,10)= w%am(ii,ix,:,:)
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
 
