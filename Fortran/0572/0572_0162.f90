type ty
integer :: a, a0(0)
integer :: b(5)
integer :: c(3,4)        
end type

type(ty) :: obj, obj0(0), obj1(3), obj2(3,4)
        

if(rank(obj) /= 0) print*,"101"        
if(rank(obj0) /= 1) print*,"102"        
if(rank(obj1) /= 1) print*,"103"        
if(rank(obj2) /= 2) print*,"104"        

if(rank(obj%a) /= 0) print*,"105"        
if(rank(obj%a0) /= 1) print*,"106"        
if(rank(obj%b) /= 1) print*,"107"        
if(rank(obj%c) /= 2) print*,"108"        

print*, "PASS"
end
