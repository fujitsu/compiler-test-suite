module km
integer,parameter::kh=1000
end
module m1
use km
 type x
  integer::x1=1
  integer,pointer    ::x3(:)
  integer,allocatable::x2(:)
end type
contains
recursive subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x2)) print *,101
  if (a%x1/=1        ) print *,103
  allocate(a%x2(2))
write(60,'(z16.16)') loc(a%x2)
end subroutine
end
use m1
  type(x):: a
do n=1,kh
call s1(a)
  if (.not.allocated(a%x2)) print *,102
end do
call chk(60)
print *,'pass'
end
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
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
