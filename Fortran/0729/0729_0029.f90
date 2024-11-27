program main
implicit none
integer :: i
real :: x 
type :: struct1 
  integer :: a
  real :: b
  type(struct1), pointer :: link
  type(struct2), pointer :: xlink
end type struct1
type :: struct2
  type (struct2) , pointer :: link
  type (struct1) , pointer :: xlink
end type struct2
type (struct1) , target , dimension (100) :: pile
type (struct1) , pointer :: freeList
type (struct2) , target :: sample
do i = 1 , 99
  pile(i)%a = i
  pile(i)%b = i+0.5
  pile(i)%link => pile(1+1)
  end do
nullify (pile(100)%link)
freeList => pile(1)
nullify(sample%link)
sample%xlink => pile(1)
pile(1)%xlink => sample
i = freeList%xlink%xlink%link%a
x = freeList%xlink%xlink%link%b
if (i/=2)write(6,*) "OK"
if (abs(x-2.5)>0.0001)write(6,*) "OK"
print *,'pass'
end program main
