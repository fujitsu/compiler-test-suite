module m
  type str
    integer(kind=4),dimension(:),pointer :: iii
    real(kind=8),dimension(:),pointer :: array
    type(str),pointer:: next
  end type str
  type(str),target:: root
  public:: foo
contains

  subroutine foo
    type(str),pointer:: x,p
    x => root%next
    do
      if(.not.associated(x)) exit
      deallocate(x%array)
      deallocate(x%iii)
      p => x%next
      deallocate(x)
      x => p
    enddo
  end subroutine foo
end module m

program main
use m
type(str),pointer:: v1,v2,v3,v4,v5,v6,v7
real(kind=8),dimension(:),pointer :: a1,a2,a3,a4,a5,a6,a7,a8
integer(kind=4),dimension(:),pointer :: i1,i2,i3,i4,i5,i6,i7,i8
allocate(a1(1:10000))
allocate(i1(1:10000))
allocate(v1)
root%array => a1
root%iii => i1
root%next => v1
allocate(a2(1:20000))
allocate(i2(1:10000))
v1%array => a2
v1%iii => i2

allocate(v2)
v1%next => v2
allocate(a3(1:30000))
allocate(i3(1:10000))
v2%array => a3
v2%iii => i3

allocate(v3)
v2%next => v3
allocate(a4(1:1))
allocate(i4(1:10000))
v3%array => a4
v3%iii => i4

allocate(v4)
v3%next => v4
allocate(a5(1:10000))
allocate(i5(1:3))
v4%array => a5
v4%iii =>i5

allocate(v5)
v4%next => v5
allocate(a6(1:10000))
allocate(i6(1:3013))
v5%array => a6
v5%iii => i6

allocate(v6)
v5%next => v6
allocate(a7(1:1))
allocate(i7(1:1113013))
v6%array => a7
v6%iii => i7

allocate(v7)
v6%next => v7
allocate(a8(1:10000))
allocate(i8(1:101))
v7%array => a8
v7%iii => i8
v6%next => null()

call foo
end program
