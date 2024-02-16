module m1
contains
subroutine s1(a,b,c,d,e,f,k1,k2)
integer,allocatable:: a
integer,allocatable             :: b
integer,pointer    :: c
integer,pointer                 :: d
integer,allocatable:: e
integer,pointer    :: f
namelist /nama/ a
namelist /namb/ b
namelist /namc/ c
namelist /namd/ d
namelist /name/ e
namelist /namf/ f
!$omp parallel
do k=k1,k2
a=1
b=3
c=1
d=3
e=24
f=24
write(1,nama)
write(2,namb)
write(3,namc)
write(4,namd)
write(11,name)
write(12,namf)
a=1+1
b=1+3
c=1+1
d=1+3
e=1+24
f=1+24
write(1,nama)
write(2,namb)
write(3,namc)
write(4,namd)
write(11,name)
write(12,namf)
end do
!$omp end parallel
end subroutine
subroutine chk(a,b,c,d,e,f,k1,k2)
integer,allocatable:: a
integer,allocatable             :: b
integer,pointer    :: c
integer,pointer                 :: d
integer,allocatable:: e
integer,pointer    :: f
namelist /nama/ a
namelist /namb/ b
namelist /namc/ c
namelist /namd/ d
namelist /name/ e
namelist /namf/ f
!$omp parallel
do k=k1,k2
rewind 1
rewind 2
rewind 3
rewind 4
rewind 11
rewind 12
a=0
b=0
c=0
d=0
e=0
f=0
read(1,nama) 
read(2,namb) 
read(3,namc) 
read(4,namd) 
read(11,name) 
read(12,namf) 
if ((a/=1))print *,'error-1'
if (    b/=3       )print *,'error-2'
if ((c/=1))print *,'error-3'
if (    d/=3       )print *,'error-4'
if ((e/=24))print *,'error-11'
if ((f/=24))print *,'error-12'
read(1,nama) 
read(2,namb) 
read(3,namc) 
read(4,namd) 
read(11,name) 
read(12,namf) 
if ((a/=1+1))print *,'error-101'
if (    b/=3      +1 )print *,'error-102'
if ((c/=1+1))print *,'error-103'
if (    d/=3       +1)print *,'error-104'
if ((e/=1+24))print *,'error-1011'
if ((f/=1+24))print *,'error-1012'
end do
!$omp end parallel
end subroutine
end
subroutine s1_0
use m1
integer,allocatable:: a
integer,allocatable             :: b
integer,pointer    :: c
integer,pointer                 :: d
integer,allocatable:: e
integer,pointer    :: f
allocate(a,b,c,d,e,f)
call       s1(a,b,c,d,e,f,1,1)
if ((a/=1+1))print *,'error-201'
if (    b/=1+3       )print *,'error-202'
if ((c/=1+1))print *,'error-203'
if (    d/=1+3       )print *,'error-204'
if ((e/=1+24))print *,'error-2021'
if ((f/=1+24))print *,'error-2022'
end
subroutine chk_0
use m1
integer,allocatable:: a
integer,allocatable             :: b
integer,pointer    :: c
integer,pointer                 :: d
integer,allocatable:: e
integer,pointer    :: f
allocate(a,b,c,d,e,f)
call      chk(a,b,c,d,e,f,1,1)
if ((a/=1+1))print *,'error-301'
if (    b/=1+3       )print *,'error-302'
if ((c/=1+1))print *,'error-303'
if (    d/=1+3       )print *,'error-304'
if ((e/=1+24))print *,'error-3031'
if ((f/=1+24))print *,'error-3032'
end
call omp_set_num_threads(1)
call s1_0
call chk_0
print *,'pass'
end
