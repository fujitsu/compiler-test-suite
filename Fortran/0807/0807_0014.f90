module km
integer,parameter::kh=1000
end
module m1
use km
type y
  integer::y1
  contains
   final::fy
end type
type,extends(y)::yy
  integer::y2
  contains
   final::fyy
end type
 type x
  integer::x1=1
  integer,pointer    ::x3(:)
  class(y),allocatable::x2(:)
  type (y),allocatable::x4(:)
end type
contains
subroutine s1(a)
  type(x),intent(out):: a(:,:)
optional::a
if (present(a)) then
  if (allocated(a(3,3)%x2)) print *,101
  if (allocated(a(3,3)%x4)) print *,104
  k=0
  select type (p=>a(3,3)%x2)
    type is(y)
     k=1
  end select
  if(k/=1) print *,201
  allocate(a(3,3)%x4(2))
write(1,'(z16.16)') loc(a(3,3)%x4)
  allocate(yy::a(3,3)%x2(2))
write(2,'(z16.16)') loc(a(3,3)%x2)
  k=0
  select type (p=>a(3,3)%x2)
    type is(yy)
     k=1
  end select
  if(k/=1) print *,203
endif
end subroutine
subroutine fy(d)
type(y)::d
write(11,*)7001
end subroutine
subroutine fyy(d)
type(yy)::d
print *,8001
end subroutine
end
use m1
  type(x):: a(3,3)
do n=1,kh
call s1()
call s1(a)
  if (.not.allocated(a(3,3)%x2)) print *,102
end do
call chk(1)
call chk(2)
call chk11(11)
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
subroutine chk11(k)
use km
logical::file_exists
inquire(file="fort.11", exist=file_exists)
if (file_exists) then
rewind k
do n=1,(kh-1)*2
   read(k ,*) nn
   if (nn/=7001) stop 999
end do
endif
end

  
