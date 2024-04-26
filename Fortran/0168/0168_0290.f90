program test01
integer*4::i=1,j=1,k=3,l=1,m=3,n=40
real*8::v1=1.0,v2=2.0,v3=3.0
i=1
j=1
do l=1,n,1
  if(j>=l) then; v2=v1 + v1/10; end if
  if(j>=l) then; v2=v2 + v3/10; end if
  v1=v1 + i/10
end do
write(1,'(E16.3,E16.3,E16.3)')v1,v2,v3
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) a,b,c
if (any( abs([a,b,c]-[0.100E+01,0.140E+01,0.300E+01]) > 0.1) ) print *,1010
end
