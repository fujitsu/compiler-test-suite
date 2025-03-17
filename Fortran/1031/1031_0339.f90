REAL(KIND=8)::A(3,3),B(3,3)
A=reshape((/(i,i=1,9)/),(/3,3/))
B=reshape((/(i,i=11,19)/),(/3,3/))
A(:,:)=A(:,:)+MATMUL(B,TRANSPOSE(A(:,:)))
if (any(abs((/A/)-(/&
187,200,213,232,248,264,277,296,315&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
