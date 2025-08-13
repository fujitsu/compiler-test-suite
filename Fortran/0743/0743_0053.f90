subroutine sub(p1,p2,j1,j2,j3,j4)
logical a1(200),a2(200),p1,p2
integer b3(200),z(200)
a1=p1
a2=p2
b3=(/(n,n=1,200)/)
z =(/(n,n=1,200)/)
n=0
if ((a1(j1+1+sum(z(j1+j2:j3+j4))).and.a2(sum(z(j1+j2:j3+j4))+j2+1)) .or. (b3(j3+1)+j4+1+sum(z(j1+j2:j3+j4)).eq.b3(j1+1)+j2+1+sum(z(j1+j2:j3+j4)) ))  then
n=1
endif
write(25,*) n
end
logical p1,p2
do j1=1,2
do j2=1,2
p1=.false.
if (j1==2)p1=.true.
p2=.false.
if (j2==2)p2=.true.
do j3=3,4
do j4=3,4
call sub(p1,p2,j1,j2,j3,j4)
end do
end do
end do
end do
call chk
print *,'pass'
end
subroutine chk
rewind 25
do kk=1,12
read(25,*)k;if(k/=0)write(6,*) "NG"
end do
read(25,*)k;if(k/=1)write(6,*) "NG"
read(25,*)k;if(k/=1)write(6,*) "NG"
read(25,*)k;if(k/=1)write(6,*) "NG"
read(25,*)k;if(k/=1)write(6,*) "NG"
end
