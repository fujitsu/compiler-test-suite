REAL(KIND=8)::A(3,3,3),B(2,2)
INTEGER::C
A=reshape((/(i,i=1,27*2)/),(/3,3,3/))
B=reshape((/(i,i=11,14)/),(/2,2/))
I=2;J=-1
A(2:3,:2,I-1)=A(2:,1:2,I-1)+MATMUL(B,TRANSPOSE(A(2:3,1:2,I+1)))
if (any(abs((/A(:,:,1)/)-(/&
1,521,565,4,548,594,7,8,9&
/))>0.001))then
print *,int(A(:,:,1))
print *,'error'
endif

print *,'pass'
end
integer function C(i)
C=i
end
