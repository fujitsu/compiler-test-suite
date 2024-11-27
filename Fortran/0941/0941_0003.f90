       type ty2
       integer,allocatable,dimension(:) :: a1
       end type
       
       type ty3
       type(ty2),allocatable,dimension(:) :: al2
       end type

       type(ty3) :: str
       class(ty2), allocatable:: arr_ty2(:)
       
       allocate(arr_ty2(10))
       allocate(str%al2(9))

       allocate(arr_ty2(1)%a1(3))
       allocate(arr_ty2(10)%a1(4))
       arr_ty2(1)%a1 = [40,50,60]
       arr_ty2(10)%a1 = [70,80,90,100]
    
       str%al2=(/(arr_ty2(i),i=1,10)/)
       if(size(str%al2) /= 10) print*,"101"
       if(size(str%al2(1)%a1) /= 3) print*,"102"
       if(all(str%al2(1)%a1 /= [40,50,60])) print*,"103"
       if(size(str%al2(10)%a1) /= 4) print*,"104"
       if(all(str%al2(10)%a1 /= [70,80,90,100])) print*,"105"
       print*,"PASS"
       end
