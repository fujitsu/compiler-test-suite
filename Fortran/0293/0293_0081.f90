subroutine s1(n,k,a,b)
integer a(0),b(k)
write(1,*)a(10:1:n)
write(1,*)a(10:1:1)
write(1,*)b(10:1:n)
write(1,*)b(10:1:1)
end
parameter (n=2,k=0)
integer a(0),b(k)
call     s1(n,k,a,b)
print *,'pass'
end



