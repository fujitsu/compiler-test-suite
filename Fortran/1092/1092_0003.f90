 subroutine sub()
n=3
associate(nn=>n)
block
  character::a     (2000 )*(2 )
  character(nn) ,dimension(nn+100)::h     (2 )*(2 )
  character::z     (2000 )*(2 )
a='1'
z='1'
if (len(h)/=2) print *,2008
if (size(h)/=2) print *,3008
h(1)(2:2)=''
do k=1,2
  h(k)(1:k)='1234'
end do
write(4,*) 2
rewind 4
read(4,*) m
do k=1,m
  if (h(k)/='1234'(1:k)) print *,1001,k,h(k)
end do
if (any(a(m-1:)/='1')) print *,2001,trim(a(1)),trim(a(2))
if (any(z(m-1:)/='1')) print *,2002,trim(z(1)),trim(z(2))
end block
end associate

 end

call sub

 print *,'sngg779r : pass'
 end
