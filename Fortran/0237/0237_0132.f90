module bank
integer,allocatable:: ncnt(:,:,:)
!$OMP THREADPRIVATE(ncnt)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(ncnt(3,4,5))
ncnt=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
write (124,*) ((( ncnt(k1,k2,k3), k1=1,n3),k2=1,n4),k3=n1,n5 ) 
write(124,*)  ncnt(:3,:4,:5)
write (125,*) ((( ncnt(k1,k2,k3), k1=n2-1,n3),k2=1,n4),k3=n1,n5 ) 
write (125,*) ((( ncnt(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
write (125,*) ncnt(n2-1:n3,0+n1:n4,n1:n5)
write (125,*) ((( ncnt(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
end
call       s1(1,2,3,4,5)
call chk
print *,'pass'
end
subroutine chk
integer x(3,4,5),x2(3,4,5),x3(3,4,5)
rewind 124
rewind 125
read(124,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,101
read(124,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,102
read(125,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,201
read(125,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,202
read(125,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
read(125,*) x,x2,x3
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,203
if (any(x2/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,204
if (any(x3/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,205
end

