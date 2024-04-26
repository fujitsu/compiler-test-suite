integer, DIMENSION (3, 3) :: SKEW
integer*4,pointer::ptr
integer*4,target::tar=30
DATA ((SKEW (K, J), J = 1, 3), K = 1, 3),ptr /1,2,3,4,5,6,7,8,9,tar / 
if(any(SKEW.ne.reshape([1, 4, 7, 2, 5, 8, 3, 6, 9],[3,3])))print*,"101",SKEW
if(associated(ptr).neqv..true.)print*,"104"
if(ptr.ne.30)print*,"101"
print*,"PASS"
end
