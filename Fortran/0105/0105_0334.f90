complex(8)::RDA(3)
complex(8)::RDA1(10)
complex(8)::RDA2(10,3)
RDA1=(/(i,i=1,10)/)
RDA2=reshape((/(i,i=1,10*3)/),(/10,3/))
NF9=9
NF8=8
NF6=6
RDA=1
RDA = MATMUL(RDA1(NF9:NF8),RDA2(NF8:NF6,:))
if (any(RDA/=0._8))print *,'error'
print *,'pass'
end
