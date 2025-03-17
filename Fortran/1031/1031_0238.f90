REAL(KIND=8)::A(2,3,3),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/2,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1,1:2,1:2)=A(1,1:2,1:2)+MATMUL(B,A(2,1:2,1:2))
if (any(abs((/A/)-(/&
15,2,23,4,5,6,45,8,65,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
