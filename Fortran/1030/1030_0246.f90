real(8)::RDA(3),vector(3)=(/1,2,3/),beta=3.0_8
real(8)::RDA1(10)
real(8)::RDA2(10,3)
RDA1=(/(i,i=1,10)/)
RDA2=reshape((/(i,i=1,10*3)/),(/10,3/))
NF9=9
NF8=8
NF6=6
RDA=1
RDA = MATMUL(RDA1(NF9:NF8),RDA2(NF8:NF6,:))+vector*beta
if (any(abs(RDA-vector*beta)>0.00001_8))print *,'error'
if (any(abs(vector-(/1,2,3/))>0.0001_8))print *,'error-2'
if (   (abs(beta-3)>0.0001_8))print *,'error-3'
print *,'pass'
end
