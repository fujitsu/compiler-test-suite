module m1
 interface
    subroutine sub1(d) bind(c) 
      type(*),dimension(..)::d
    end
    subroutine sub2(d) bind(c)
      integer,dimension(..)::d
    end
    subroutine sub3(d) bind(c)
      type(*)              ::d
    end
 end interface
end
module m2
contains
subroutine z(b) bind(c)
use m1
      type(*),dimension(..)::b
integer::a=1
!write(103, '("a:",z16.16)')loc(a)
!write(103, '("b:",z16.16)')loc(b)
write(104, '(z16.16)')loc(a)
write(104, '(z16.16)')loc(b)
call sub1(a)
call sub1(b)
call sub2(a)
call sub3(a)
end
end
    subroutine sub1(d) bind(c)
      !type(*),dimension(..)::d
      integer              ::d
!write(103, '("sub1 d:",z16.16)')loc(d)
write(103, '(z16.16)')loc(d)
    end
    subroutine sub2(d) bind(c)
      !integer,dimension(..)::d
      integer              ::d
!write(103, '("sub2 d:",z16.16)')loc(d)
write(103, '(z16.16)')loc(d)
    end
    subroutine sub3(d) bind(c)
      !type(*)              ::d
      integer              ::d
!write(103, '("sub3 d:",z16.16)')loc(d)
write(103, '(z16.16)')loc(d)
    end
use m2
integer::c=1
!write(103, '("c:",z16.16)')loc(c)
!write(103, '(z16.16)')loc(c)
call z(c)
call chl
print  *,'sngg737l : pass'
end
subroutine chl
character(16)::r1(2),r2
rewind 104
read(104,'(a)') r1(1)
read(104,'(a)') r1(2)
rewind 103
do kk=1,3
read(103,'(a)') r2
do k=1,2
if (r1(k)==r2) print *,809
end do
end do
do kk=1,2
read(103,'(a)',end=10) r2
do k=1,1
if (r1(k)/=r2) print *,8091
end do
end do
print *,8010
10 end
!    subroutine zsub1(d) bind(c)
!      type(*),dimension(..)::d
!write(103,*) loc(d)
!    end
!    subroutine zsub2(d) bind(c)
!      integer,dimension(..)::d
!write(103,*) loc(d)
!    end
!    subroutine zsub3(d) bind(c)
!      type(*)              ::d
!write(103,*) loc(d)
!    end
