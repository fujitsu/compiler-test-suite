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
 
 type mm
   logical::v=.true.
 end type
 type m
   type(mm),dimension(:),pointer::vv=>null()
 end type
 type(m),pointer::ms=>null()
 if (associated(ms))write(6,*) "NG"
 allocate(ms)
 if (.not.associated(ms))write(6,*) "NG"
 if (associated(ms%vv))write(6,*) "NG"
 allocate(ms%vv(5))
 if (.not.associated(ms%vv))write(6,*) "NG"
 if (.not.all(ms%vv%v))write(6,*) "NG"
 allocate (a1(2,3,4,5,2,10))
 allocate (w)
 iz2=2
!
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
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
   end where
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
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
   end where
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
 type mm
   logical::v=.true.
 end type
 type m
   type(mm),dimension(:),pointer::vv=>null()
 end type
 type(m),pointer::ms=>null()
 if (associated(ms))write(6,*) "NG"
 allocate(ms)
 if (.not.associated(ms))write(6,*) "NG"
 if (associated(ms%vv))write(6,*) "NG"
 allocate(ms%vv(5))
 if (.not.associated(ms%vv))write(6,*) "NG"
 if (.not.all(ms%vv%v))write(6,*) "NG"
 allocate (a1(2,3,4,5,2,10))
 allocate (w)
 iz2=2
!
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(1,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
   end where
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(1,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
   a1(1,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
   end where
 end forall
 end forall
 do k=1,10
 if (any(a1(1,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
 forall (iz=2:iz2)
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,1)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,2)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,3)= w%am(ii,ix,:,jx)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,4)= w%am(ii,ix,:,jx)
   a1(iz,ii,ix,:,jx,5)= w%am(ii,ix,:,jx)
   end where
 end forall
 end forall
 forall (ii=1:size(a1,2))
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,6)= w%am(ii,ix,:,jx)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,7)= w%am(ii,ix,:,jx)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,8)= w%am(ii,ix,:,jx)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,9)= w%am(ii,ix,:,jx)
   end where
 end forall
 forall (ix=1:size(a1,3),jx=1:size(a1,5))
   where (ms%vv%v)
   a1(iz,ii,ix,:,jx,10)= w%am(ii,ix,:,jx)
   end where
 end forall
 end forall
 end forall
 do k=1,10
 if (any(a1(2,:,:,:,:,k)/=reshape((/(i,i=1,120)/),(/3,4,5,2/))))write(6,*) "NG"
 end do
end
