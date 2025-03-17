REAL(KIND=8)::A(3,3,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=-2;J=1
A(1:2,1:2,J+I+4)=MATMUL(A(1:2,1:2,J+I+2),B)
if (any(abs((/A(1:2,1:2,3)/)-(/&
9,12,19,26&
/))>0.001))then
print *,int(A(1:2,1:2,3))
print *,'error'
endif
print *,'pass'
end
