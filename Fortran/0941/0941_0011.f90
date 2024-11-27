module m1 
type ty2 
 integer,allocatable,dimension(:) :: a1 
end type
 
 type, extends(ty2)::ts 
 end type 
 
 type ty3 
 class(ty2),allocatable,dimension(:) :: al2 
 end type 
 end module m1 
 
 use m1 
 type(ty3) :: str 
 
 class(ty2), allocatable:: arr_ty2(:) 
 integer::x(10) 
 
 allocate(arr_ty2(10)) 
 allocate(str%al2(10)) 
 
 x=(/(i,i=1,10)/) 
 str%al2=(/(ty2(x),i=1,10)/) 
 
 x=(/(i,i=111,120)/) 
 arr_ty2=(/(ts(x),i=1,10)/) 

 str%al2=(/(arr_ty2(1:5:2)),(arr_ty2(6:10:2))/) 
 szRHS = size(str%al2) 
 if(ubound(str%al2,1) /= 6) print*,"102"
 if(szRHS .ne. 6) print*,"103",szRHS
 
 select type (x => str%al2) 
 type is (ty2) 
 print*, "PASS" 
 class default 
 print*,"ERROR" 
 end select 
 end
