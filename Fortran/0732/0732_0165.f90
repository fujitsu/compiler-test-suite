call ss0(-3)
call ss1(-3)
print *,'pass'
end
subroutine ss0(i)
real(4),allocatable::b(:,:),c(:,:),d(:)
allocate(b(i,i),c(i,i),d(i))
n=40
b=1
c=1
d=1
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,d)
write(n+3,*)matmul(d,c)
rewind n+1;read(n+1,*,end=1)k ;write(6,*) "NG"
1 rewind n+2;read(n+2,*,end=2)k;write(6,*) "NG"
2 rewind n+3;read(n+3,*,end=3)k;write(6,*) "NG"
3 return 
end
subroutine ss1(i)
real(4)::b(i,i),c(i,i),d(i)
n=30
b=1
c=1
d=1
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,d)
write(n+3,*)matmul(d,c)
rewind n+1;read(n+1,*,end=1)k ;write(6,*) "NG"
1 rewind n+2;read(n+2,*,end=2)k;write(6,*) "NG"
2 rewind n+3;read(n+3,*,end=3)k;write(6,*) "NG"
3 return 
end
