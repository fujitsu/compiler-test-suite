complex(8)::RDA(3),alpha=2.0_8,vector(3)=(/1,2,3/)
complex(8)::RDA1(10)
complex(8)::RDA2(10,3)
RDA1=(/(i,i=1,10)/)
RDA2=reshape((/(i,i=1,10*3)/),(/10,3/))
NF9=9
NF8=8
NF6=6
RDA=1
RDA = alpha*MATMUL(RDA1(NF9:NF8),RDA2(NF8:NF6,:))+vector
if (   (abs(alpha-2.0_8)>0.00001_8))print *,'error'
if (any(abs(RDA-vector)>0.00001_8))print *,'error-2'
print *,'pass'
end
