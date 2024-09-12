subroutine s1(a,b,c)
real,dimension(5):: a,b,c
do concurrent( k=1:5 )
  c(k) = a(k)+sqrt(b(k))
end do
end
subroutine s2(a,b,c)
real,dimension(5):: a,b,c
do  k=1,5 
  c(k) = a(k)+sqrt(b(k))
end do
end
real,dimension(5):: c1,c2
real,dimension(5):: a,b
a=[real::1,2,3,4,5]/10
b=[real::1,2,3,4,5]/10
call s1(a,b,c1)
call s2(a,b,c2)
if (any(c1/=c2)) print *,101,c1,c2
print *,'pass'
end

