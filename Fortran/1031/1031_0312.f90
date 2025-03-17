REAL(KIND=8)::A(2,4,3),B(2,2)
A=reshape((/(i,i=1,27)/),(/2,4,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1,1:2,1:2)=MATMUL(transpose(A(2,3:4,1:2)),B)
if (any(abs((/A(1,1:2,1:2)/)-(/&
22,46,50,106&
/))>0.001))then
print *,int(A(1,1:2,1:2))
print *,'error'
endif
print *,'pass'
end
