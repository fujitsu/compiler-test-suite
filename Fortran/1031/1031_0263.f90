REAL(KIND=8)::A(3,3,4:6),B(2,2)
integer,dimension(2)::M=(/1,2/)
A=reshape((/(i,i=1,27)/),(/3,3,3/))
B=reshape((/(i,i=1,4)/),(/2,2/))
A(1:2,M,4)=MATMUL(A(1:2,M,5),B)
if (any(abs((/A(1:2,1:2,4)/)-(/&
36,39,82,89&
/))>0.001))then
print *,int(A(1:2,1:2,4))
print *,'error'
endif
print *,'pass'
end
