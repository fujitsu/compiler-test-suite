    type aa
           integer::c(3)
           integer,pointer :: a1
           integer,pointer :: b1
         endtype
         type(aa) x2(3,3)

integer*4,pointer::ptr
integer*4,target::tar=30
DATA ((x2(K, J)%a1, J = 1, 3), K = 1, 3),ptr /9*tar,tar / 
if(associated(ptr).neqv..true.)print*,"104"
if(ptr.ne.30)print*,"109"
if(associated(x2(1,1)%a1).neqv..true.)print*,"103"
if(x2(1,1)%a1.ne.30)print*,"104"
print*,"PASS"
end
