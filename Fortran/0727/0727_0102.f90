 call s1
 print *,'pass'
 end
 subroutine s1
 call ss1
 call ss2
 end
 subroutine ss1
  implicit integer(2)(a-z)
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
 forall (ii=1:size(a1,2),ii/=ii*10)
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   a1(1,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2,iz==2)
 forall (ii=1:size(a1,2),ii/=ii*10.and.iz/=3)
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii/=ii*10.and.iz/=3)
   a1(iz,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
 subroutine ss2
  implicit integer(2)(a-z)
 integer(8) ,allocatable,dimension(:,:,:,:,:,:)::a1
  type x
 integer ::am(3,4,5,2)=reshape((/(i,i=1,120)/),(/3,4,5,2/))
  end type
  type(x),pointer::w
!
 allocate (a1(2,3,4,5,2,10))
 allocate (w)
 iz2=2
!
 forall (ii=1:size(a1,2),ii/=ii*10)
 forall (ix=1:size(a1,3),jx=1:size(a1,5),ii/=ii*10.and.ix/=10)
   a1(1,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5),ii/=10)
   a1(1,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2),ii/=ii*10.and.iz/=3)
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5),iz==2.and.ii>=1.and.ix/=10.and.ix/=-jx)
   a1(iz,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
