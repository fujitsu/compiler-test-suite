module m1 
type ty2 
 integer,allocatable,dimension(:) :: a1 
end type
 
 type, extends(ty2)::ts 
 end type 
 
 type ty3 
 type(ty2),allocatable,dimension(:) :: al2 
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
 
 szLHS = size(str%al2) 
 
 x=(/(i,i=111,120)/) 
 arr_ty2=(/(ts(x),i=1,10)/) 

 str%al2=(/(arr_ty2(1:5)),(arr_ty2(6:9))/) 
 szRHS = size(str%al2) 
 
 if(szLHS == szRHS) print*,"101", size(str%al2) 
 if(ubound(str%al2,1) /= 9) print*,"102"
 if(szRHS .ne. 9) print*,"103",szRHS
 print*, "PASS" 
 end
