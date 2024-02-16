complex(KIND=8)::A(3,3,2),B(2,2)
INTEGER::C(4)
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=11,14)/),(/2,2/))
C=(/(i,i=1,4)/)
I=1;J=1
A(2:3,:2,C(2))=A(2:,1:2,C(2))+MATMUL(B,A(2:3,1:2,C(2)-1))
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,10,72,78,13,147,159,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end

