REAL(KIND=8)::A(3,3),B(3,3)
A=reshape((/(i,i=1,9)/),(/3,3/))
B=reshape((/(i,i=11,19)/),(/3,3/))
A=A+MATMUL(TRANSPOSE(B),A(1:3,1:3))
if (any(abs((/A/)-(/&
75,94,113,186,232,278,297,370,443&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
