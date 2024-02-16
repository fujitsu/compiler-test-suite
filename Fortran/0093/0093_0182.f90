complex :: cmp1(1)
complex :: cmp2(1,2)
real:: r1(1)=(2)
real:: r2(1,2)=(7,7)
cmp1=(2,4)
cmp2=(5,7)
if(any(matmul(cmp1%re,cmp2%im) .ne. matmul(r1,r2)))print*,"101"
if(product(cmp1%re,1) .ne. product(r1,1))print*,"101"
print*, "pass"
end
