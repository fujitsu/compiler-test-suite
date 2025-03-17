REAL(KIND=8)::A(2,3,3),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/2,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
I=1;J=2
A(1,I:J,I:J)=A(1,I:J,I:J)+MATMUL(TRANSPOSE(B),A(2,I:J,I:J))
if (any(abs((/A/)-(/&
11,2,25,4,5,6,35,8,73,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
