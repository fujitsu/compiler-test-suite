complex(KIND=8)::A(3,3,2),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/3,3,2/))
B=reshape((/(i,i=11,14)/),(/2,2/))
I=1
A(2:3,:2,I)=A(2:,1:2,I)+MATMUL(B,A(2:3,1:2,I*2))
if (any(abs((/A/)-(/&
1,279,303,4,354,384,7,8,9,10,11,12,13,14,15,16,17,18&
/))>0.001))then
print *,int(A)
print *,'error'
endif

print *,'pass'
end
integer function C(i)
C=i
end
