module bank
integer,allocatable:: ncnt(:,:,:)
integer,allocatable:: ncnt1(:,:,:)
integer,allocatable:: ncnt2(:,:,:)
integer,allocatable:: ncnt3(:,:,:)
!$OMP THREADPRIVATE(ncnt1,ncnt2,ncnt3)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(ncnt(3,4,5))
allocate(ncnt1(3,4,5))
allocate(ncnt2(3,4,5))
allocate(ncnt3(3,4,5))
ncnt=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
read (131,*) ((( ncnt1(k1,k2,k3), k1=1,n3),k2=1,n4),k3=n1,n5 ) 
call chk
read(131,*)  ncnt1(:3,:4,:5)
call chk
read (131,*) ((( ncnt1(k1,k2,k3), k1=n2-1,n3),k2=1,n4),k3=n1,n5 ) 
call chk
read (131,*) ((( ncnt1(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
call chk
read (131,*) ncnt1(n2-1:n3,0+n1:n4,n1:n5)
call chk
read (131,*) ((( ncnt1(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt2(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) ,&
     &      ((( ncnt3(k1,k2+n1,k3), k1=n2-1,n3),k2=0,n3),k3=n1,n5 ) 
call chk3
end
write(131,*) (/(k,k=1,3*4*5)/)
write(131,*) (/(k,k=1,3*4*5)/)
write(131,*) (/(k,k=1,3*4*5)/)
write(131,*) (/(k,k=1,3*4*5)/)
write(131,*) (/(k,k=1,3*4*5)/)
write(131,*) (/(k,k=1,3*4*5)/),(/(k,k=1,3*4*5)/),(/(k,k=1,3*4*5)/)
rewind 131
call       s1(1,2,3,4,5)
print *,'pass'
end
subroutine chk
use bank
if (any(ncnt/=ncnt1))print *,101
ncnt1=0
return
entry chk3
if (any(ncnt/=ncnt1))print *,102
if (any(ncnt/=ncnt2))print *,103
if (any(ncnt/=ncnt3))print *,104
end

