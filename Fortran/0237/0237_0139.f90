module bank
integer:: ncnt1(3,4,5)
integer:: ncnt2(3,4,5)
integer:: ncnt3(3,4,5)
!$OMP THREADPRIVATE(ncnt1)
!$OMP THREADPRIVATE(ncnt2)
!$OMP THREADPRIVATE(ncnt3)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
ncnt1=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
ncnt2=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
ncnt3=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
write (127,*) ncnt1(:n3,:n4,:n5) 
write(127,*)  ncnt1(:3,:4,:5)
write (138,*) ncnt1(n2-1:n3,:n4,:n5) 
write (138,*) ncnt1(n2-1:n3,n1:n4,n2-n1:n5) 
write (138,*) ncnt1(n2-1:n3,0+n1:n4,n1:n5)
write (138,*) ncnt1(n2-1:n3,:n4,:n5) , &
            ncnt2(n2-1:n3,n1:n4,n2-n1:n5) , &
            ncnt3(n2-1:n3,0+n1:n4,n1:n5)
write (138,*) ((( ncnt1(k1,k2+n1,k3),ncnt2(k1,k2+n1,k3),ncnt3(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
end
call       s1(1,2,3,4,5)
call chk
print *,'pass'
end
subroutine chk
integer x(3,4,5),x2(3,4,5),x3(3,4,5),y(3*3*4*5)
rewind 127
rewind 138
read(127,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,101
read(127,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,102
read(138,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,201
read(138,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,202
read(138,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
read(138,*) x,x2,x3
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
if (any(x2/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,204
if (any(x3/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,205
read(138,*) y
if (any(&
  y/=        (/(k,k,k,k=1,3*4*5)/) ))print *,206
end

