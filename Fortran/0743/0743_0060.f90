DOUBLE PRECISION ::U(1:1,1:1,-85:-85),TEST(1:4,1,1)=0
K=63
U(1,1,-85)=-0.8300544200843747d0
TEST(2:2,-(-1-K/K+1):1,:)=DABS(U*8559)
write(1,*)TEST(2,1,1)
if (abs(TEST(2,1,1)-7104.435781502163d0)>0.1)print *,'error'
print *,'pass'
END PROGRAM