module km
integer,parameter::kh=1000
end
module m1
use km
 type x
  integer::x1
  integer,pointer    ::x3(:)
  integer,allocatable::x2(:)
end type
contains
elemental impure subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x2)) print *,101
  allocate(a%x2(2))
write(39,'(z16.16)') loc(a%x2)
end subroutine
end
use m1
  type(x):: a(3)
do n=1,kh
call s1(a)
  if (.not.allocated(a(1)%x2)) print *,102
  if (.not.allocated(a(2)%x2)) print *,102
  if (.not.allocated(a(3)%x2)) print *,102
end do
call chk(39)
print *,'pass'
end
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh*3
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    print *,'Eroor memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end
