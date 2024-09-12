subroutine s1(i,k)
character(k)::a(i)
a=repeat(char(0),k)
if (len(maxval(a))/=k)print *,i,k
if (maxval(a)/=repeat(char(0),k))print *,i,k
end
do i1=0,2
do i2=0,2
call s1(i1,i2)
end do
end do
print *,'pass'
end
