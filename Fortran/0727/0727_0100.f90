 call s1
 print *,'pass'
 end
 subroutine s1
 type mm
   logical::v=.true.
 end type
 type m
   type(mm),dimension(:,:),pointer::vv=>null()
 end type
 type(m),pointer::ms=>null()
 if (associated(ms))write(6,*) "NG"
 allocate(ms)
 if (.not.associated(ms))write(6,*) "NG"
 if (associated(ms%vv))write(6,*) "NG"
 allocate(ms%vv(5,2))
 if (.not.associated(ms%vv))write(6,*) "NG"
 if (.not.all(ms%vv%v))write(6,*) "NG"
 ms%vv(:,1)%v=.false.
 call ss1
 call ss2
 contains
 subroutine ss1
 integer ,allocatable,dimension(:,:,:,:,:,:)::a1
  type x
 integer ::am(3,4,5,2)=-10
  end type
  type(x),pointer::w
!
 allocate (a1(2,3,4,5,2,10))
 a1=-1
 allocate (w)
 w%am(:,:,:,2)=reshape((/(i,i=1,60)/),(/3,4,5/))
 iz2=2
!
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
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
   end where
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,1,k)/=-1))write(6,*) "NG"
 if (any(a1(1,:,:,:,2,k)/=reshape((/(i,i=1,60)/),(/3,4,5/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
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
   end where
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,1,k)/=-1))write(6,*) "NG"
 if (any(a1(2,:,:,:,2,k)/=reshape((/(i,i=1,60)/),(/3,4,5/))))write(6,*) "NG"
 end do
end subroutine
 subroutine ss2
 integer ,allocatable,dimension(:,:,:,:,:,:)::a1
  type x
 integer ::am(3,4,5,2)=-10
  end type
  type(x),pointer::w
!
 allocate (a1(2,3,4,5,2,10))
 a1=-1
 allocate (w)
 w%am(:,:,:,2)=reshape((/(i,i=1,60)/),(/3,4,5/))
 iz2=2
!
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(1,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,3)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,5)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,6)= w%am(ii,ix,:,:)
   end where
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(1,ii,ix,:,:,7)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,8)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,9)= w%am(ii,ix,:,:)
   a1(1,ii,ix,:,:,10)= w%am(ii,ix,:,:)
   end where
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,1,k)/=-1))write(6,*) "NG"
 if (any(a1(1,:,:,:,2,k)/=reshape((/(i,i=1,60)/),(/3,4,5/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,1)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,2)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,3)= w%am(ii,ix,:,:)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,4)= w%am(ii,ix,:,:)
   a1(iz,ii,ix,:,:,5)= w%am(ii,ix,:,:)
   end where
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,6)= w%am(ii,ix,:,:)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,7)= w%am(ii,ix,:,:)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,8)= w%am(ii,ix,:,:)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,9)= w%am(ii,ix,:,:)
   end where
 end forall
 forall (ix=1:size(a1,3))
   where(ms%vv%v)
   a1(iz,ii,ix,:,:,10)= w%am(ii,ix,:,:)
   end where
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,1,k)/=-1))write(6,*) "NG"
 if (any(a1(2,:,:,:,2,k)/=reshape((/(i,i=1,60)/),(/3,4,5/))))write(6,*) "NG"
 end do
end subroutine
end
 