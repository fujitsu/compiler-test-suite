module m1
   type x
    integer ::i=2
   end type
end
recursive subroutine sub(j)
  use m1
  type(x)::x1
  type(x),save::x2
  write(40,*)x1%i,x2%i
  x1%i=10
  x2%i=10
  write(40,*)x1%i,x2%i
  j=j+1
  if (j<4)call sub(j)
end
j=1
call sub(j)
j=1
call sub(j)
call chk
print *,'pass'
end
subroutine chk
rewind 40
k=0
read(40,*) j1,j2;if (j1/=2.or.j2/=2)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=2.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=2.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=2.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=2.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=2.or.j2/=10)k=k+1
read(40,*) j1,j2;if (j1/=10.or.j2/=10)k=k+1
if (k/=0)print *,'error'
end
