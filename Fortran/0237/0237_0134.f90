module bank
integer,allocatable:: ncnt1(:,:,:)
integer,allocatable:: ncnt2(:,:,:)
integer,allocatable:: ncnt3(:,:,:)
!$OMP THREADPRIVATE(ncnt1)
!$OMP THREADPRIVATE(ncnt2)
!$OMP THREADPRIVATE(ncnt3)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(ncnt1(3,4,5))
ncnt1=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
allocate(ncnt2(3,4,5))
ncnt2=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
allocate(ncnt3(3,4,5))
ncnt3=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
write (135,*) ((( ncnt1(k1,k2,k3), k1=1,n3),k2=1,n4),k3=n1,n5 ) 
write(135,*)  ncnt1(:3,:4,:5)
write (136,*) ((( ncnt1(k1,k2,k3), k1=n2-1,n3),k2=1,n4),k3=n1,n5 ) 
write (136,*) ((( ncnt1(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
write (136,*) ncnt1(n2-1:n3,0+n1:n4,n1:n5)
write (136,*) ((( ncnt1(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt2(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt3(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
write (136,*) ((( ncnt1(k1,k2+n1,k3),ncnt2(k1,k2+n1,k3),ncnt3(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
end
call       s1(1,2,3,4,5)
call chk
print *,'pass'
end
subroutine chk
integer x(3,4,5),x2(3,4,5),x3(3,4,5),y(3*3*4*5)
rewind 135
rewind 136
read(135,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,101
read(135,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,102
read(136,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,201
read(136,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,202
read(136,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
read(136,*) x,x2,x3
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
if (any(x2/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,204
if (any(x3/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,205
read(136,*) y
if (any(&
  y/=        (/(k,k,k,k=1,3*4*5)/) ))print *,206
end

