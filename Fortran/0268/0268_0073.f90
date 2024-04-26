integer, DIMENSION (3, 3) :: SKEW
integer,pointer::ptr
integer,target::t1 =20
DATA ((SKEW (K, J), J = 1, 0), K = 1, 0),ptr /t1 / 
if(associated(ptr).neqv..true.)print*,"101"
print*,"PASS"
end
