subroutine sub1(a,b,c,d,n)
real,dimension(n+3)::a,b,c,d
do i=1,n
  t=a(i)+b(i)+c(i)
  d(i+3)=t+d(i)
enddo
end subroutine

subroutine sub2(a,b,c,n)
real a(n),b(n),c(n,n)
do j=1,n
  t=a(j)+b(j)
  do i=1,n
    c(j,i)=t*c(j,i)
  enddo
enddo
end subroutine

integer,parameter::n=10
real a1(n+3),b1(n+3),c1(n+3),d1(n+3)
real a2(n),b2(n),c2(n,n)
do i=1,n+3
  a1(i) = i
  b1(i) = 2
  c1(i) = 3
  d1(i) = i
enddo
do i=1,n
  a2(i) = i
  b2(i) = 2
  do j=1,n
    c2(i,j) = i+j
  enddo
enddo
call sub1(a1,b1,c1,d1,n)
write(6,*) d1
call sub2(a2,b2,c2,n)
write(6,*) c2
print *,'ok'
end
