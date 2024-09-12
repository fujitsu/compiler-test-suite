TYPE TY
 integer,pointer::info
END TYPE


TYPE(TY), DIMENSION (2, 2) :: SKEW
TYPE(TY), DIMENSION (100, 100) :: SKEW2
integer,target::tr2=20
DATA ((SKEW (K, J), J = 1, K), K = 1, 2)  /3*TY(tr2)/ 
DATA ((SKEW2 (K, J), J = K + 1, 100), K = 1, 99) / 4950 *TY(tr2)/

if(SKEW(1,1)%info.ne.20)print*,"101"
if(SKEW(2,2)%info.ne.20)print*,"102"
if(SKEW2(1,2)%info.ne.20)print*,"201"
if(associated(SKEW2(2,1)%info).neqv..false.)print*,"202"
Print*,"PASS"
end
