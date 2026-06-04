module m1
 interface
    subroutine sub1(d) 
      type(*),dimension(..)::d
    end
    subroutine sub2(d) 
      integer,dimension(..)::d
    end
    subroutine sub3(d) 
      type(*)              ::d
    end
 end interface
end
module m2
contains
subroutine z(b) 
use m1
      type(*),dimension(..)::b
integer::a=1
!write(101, '("a:",z16.16)')loc(a)
!write(101, '("b:",z16.16)')loc(b)
write(101, '(z16.16)')loc(a)
write(101, '(z16.16)')loc(b)
call sub1(a)
call sub1(b)
call sub2(a)
call sub3(a)
end
end
    subroutine sub1(d) 
      !type(*),dimension(..)::d
      integer              ::d
!write(100, '("sub1 d:",z16.16)')loc(d)
write(100, '(z16.16)')loc(d)
    end
    subroutine sub2(d) 
      !integer,dimension(..)::d
      integer              ::d
!write(100, '("sub2 d:",z16.16)')loc(d)
write(100, '(z16.16)')loc(d)
    end
    subroutine sub3(d) 
      !type(*)              ::d
      integer              ::d
!write(100, '("sub3 d:",z16.16)')loc(d)
write(100, '(z16.16)')loc(d)
    end
use m2
integer::c=1
!write(100, '("c:",z16.16)')loc(c)
call z(c)
call chl
print      *,'sngg736l : pass'
end
!    subroutine zsub1(d) 
!      type(*),dimension(..)::d
!write(100,*) loc(d)
!    end
!    subroutine zsub2(d) 
!      integer,dimension(..)::d
!write(100,*) loc(d)
!    end
!    subroutine zsub3(d) 
!      type(*)              ::d
!write(100,*) loc(d)
!    end
subroutine mpi_isend_f08(buf)
integer(4)  :: buf(*)
write(2,'(z16.16)')loc(buf)
end
subroutine chl
character(16)::r1(2),r2
rewind 101
read(101,'(a)') r1(1)
read(101,'(a)') r1(2)
rewind 100
do kk=1,3
read(100,'(a)') r2
do k=1,2
if (r1(k)==r2) print *,809
end do
end do
do kk=1,2
read(100,'(a)',end=10) r2
do k=1,1
if (r1(k)/=r2) print *,8091
end do
end do
print *,8010
10 end
