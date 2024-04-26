subroutine s1(n,m)
integer::a1(n+1,m),a2(2:3,4:6,4:7)
k=4
a1(:,k)=1
a2(:,k,:)=2
end
call s1(2,4)
print *,'pass'
end
