 call s1
 print *,'pass'
 end
 subroutine s1
 do i=1,3
   call ss1
 end do
end
 subroutine ss1
integer,dimension(1,1,1,1,1,1,2),parameter ::aa=reshape((/3,4/),(/1,1,1,1,1,1,2/))
 type a
   integer ::a1=1
   integer,dimension(1,1,1,1,1,1,2) ::a2=2
   integer,dimension(1,1,1,1,1,1,2) ::a3=reshape((/3,4/),(/1,1,1,1,1,1,2/))
   integer ,pointer::a4=>null()
   integer,pointer,dimension(:,:,:,:,:,:,:) ::a5=>null()
 end type
 type (a),allocatable,dimension(:):: x0
 type (a),pointer    ,dimension(:):: x1
 type (a),pointer                 :: x2
 allocate(x0(2))
 allocate(x1(2))
 allocate(x2)
 if (any(x0%a1/=1))write(6,*) "NG"
 do i=1,2
 if (any(x0(i)%a2/=2))write(6,*) "NG"
 if (any(x0(i)%a3/=aa))write(6,*) "NG"
 if (associated(x0(i)%a4))write(6,*) "NG"
 if (associated(x0(i)%a5))write(6,*) "NG"
 allocate(x0(i)%a4,x0(i)%a5(1,1,1,1,1,1,2))
 end do
 if (any(x1%a1/=1))write(6,*) "NG"
 do i=1,2
 if (any(x1(i)%a2/=2))write(6,*) "NG"
 if (any(x1(i)%a3/=aa))write(6,*) "NG"
 if (associated(x1(i)%a4))write(6,*) "NG"
 if (associated(x1(i)%a5))write(6,*) "NG"
 allocate(x1(i)%a4,x1(i)%a5(1,1,1,1,1,1,2))
 end do
 if ((x2%a1/=1))write(6,*) "NG"
 if (any(x2%a2/=2))write(6,*) "NG"
 if (any(x2%a3/=aa))write(6,*) "NG"
 if (associated(x2%a4))write(6,*) "NG"
 if (associated(x2%a5))write(6,*) "NG"
 allocate(x2%a4,x2%a5(1,1,1,1,1,1,2))
 end
