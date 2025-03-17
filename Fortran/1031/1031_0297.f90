REAL(KIND=8)::A(4,4,4,4),B(2,2)
A=reshape((/(i,i=1,16*16)/),(/4,4,4,4/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1:2,1:2,1,1)=MATMUL(transpose(A(3:4,3,1:2,1)),B)
if (any(abs((/A(1:2,1:2,1,1)/)-(/&
35,83,81,193&
/))>0.001))then
print *,int(A(1:2,1:2,1,1))
print *,'error'
endif
print *,'pass'
end
