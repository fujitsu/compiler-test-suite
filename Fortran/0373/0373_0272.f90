call sub1(2,3)
end
subroutine sub1(n,m)
real::a1(n),a2(n,m)
character*(n)::b1
a1=1;a2=1
b1='a'
print*,a1(1),a2(1,1),b1
end subroutine
