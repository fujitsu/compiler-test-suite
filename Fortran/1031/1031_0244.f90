REAL(KIND=8)::A(3,3,-2:-1),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1:2,1:2,1-3)=MATMUL(A(1:2,1:2,1-2),B)
if (any(abs((/A/)-(/&
36,39,3,82,89,6,7,8,9,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
