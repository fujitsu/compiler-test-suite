REAL(KIND=8)::A(3,3,2),B(2,2)
INTEGER::C
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=11,14)/),(/2,2/))
I=0;J=-1
A(2:3,:2,I+1)=A(2:,1:2,I+1)+MATMUL(TRANSPOSE(B),TRANSPOSE(A(2:3,1:2,J+3)))
if (any(abs((/A/)-(/&
1,291,342,4,317,372,7,8,9,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
integer function C(i)
C=i
end
