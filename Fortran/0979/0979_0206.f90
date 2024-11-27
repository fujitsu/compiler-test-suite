call test01()
call test02()
print *,"pass"
end

module mod01
type ty1
 integer  ,pointer  :: arr(:)
end type
type ty2
 type(ty1),pointer :: brr(:)
 integer  :: crr(10)
end type
type(ty2),protected :: str(10)
contains
subroutine isub()
do i=1,10
allocate(str(i)%brr(10))
end do
end subroutine
subroutine isub2()
do i=1,10
 do j=1,10
  do k=1,10
  if (str(i)%brr(j)%arr(k).ne. i*j*k) write(6,*) "NG"
  end do
 end do
enddo
end subroutine
end
subroutine test01()
use mod01
call isub()
do i=1,10
 do j=1,10
  allocate(str(i)%brr(j)%arr(10))
  do k=1,10
  call sub(str(i)%brr(j)%arr(k), i*j*k)
  end do
 end do
enddo
call isub2()
contains
subroutine sub(rrr,iii)
integer :: rrr,iii
intent(in) :: iii
intent(out) :: rrr
rrr=iii
end subroutine
end

module mod02
type ty1
 integer  ,pointer  :: arr(:)
end type
type ty2
 type(ty1),pointer :: brr(:)
 integer  :: crr(10)
end type
type(ty2),protected :: str(10)
contains
subroutine isub()
do i=1,10
allocate(str(i)%brr(10))
end do
end subroutine
subroutine isub2()
do i=1,10
 do j=1,10
  do k=1,10
  if (str(i)%brr(j)%arr(k).ne. i*j*k) write(6,*) "NG"
  end do
 end do
enddo
end subroutine
end
subroutine test02()
use mod02
call isub()
do i=1,10
 do j=1,10
  allocate(str(i)%brr(j)%arr(10))
  do k=1,10
  call sub(str(i)%brr(j)%arr(k), i*j*k)
  end do
 end do
enddo
call isub2()
contains
subroutine sub(rrr,iii)
integer :: rrr,iii
intent(in) :: iii
intent(inout) :: rrr
rrr=iii
end subroutine
end

