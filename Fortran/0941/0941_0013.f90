       type ty2
       integer,allocatable,dimension(:) :: a1
       end type
      
       type,extends(ty2)::ts
       integer :: a2(2)
       end type

       type ty3
       class(ty2),allocatable,dimension(:) :: al2
       end type
      
       type ty4
       class(ty2), allocatable:: arr_ty2(:)
       end type

       type(ty3) :: str
       type(ty4) :: obj
       
       allocate(ts::obj%arr_ty2(10))
       allocate(str%al2(9))

       allocate(obj%arr_ty2(1)%a1(3))
       allocate(obj%arr_ty2(10)%a1(4))
       obj%arr_ty2(1)%a1 = [40,50,60]
       obj%arr_ty2(10)%a1 = [70,80,90,100]
    
       str%al2=(/(obj%arr_ty2(i),i=1,10)/)
       if(size(str%al2) /= 10) print*,"101", size(str%al2)
       if(size(str%al2(1)%a1) /= 3) print*,"102"
       if(all(str%al2(1)%a1 /= [40,50,60])) print*,"103"
       if(size(str%al2(10)%a1) /= 4) print*,"104", size(str%al2(10)%a1)
       if(all(str%al2(10)%a1 /= [70,80,90,100])) print*,"105",str%al2(10)%a1

       select type (x => str%al2)
        type is (ty2)
         print*,"PASS"
        class default
         print*,"911"
       end select
       end
