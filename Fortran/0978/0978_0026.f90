type str1
  integer,allocatable :: from(:)
end type
type str2
  integer,allocatable :: to(:)
end type

type(str1) :: s1
type(str2) :: s2
allocate(s1%from(10))
s1%from = 10

call move_alloc(s1%from,s2%to)

if (.not. allocated(s2%to)) then
  print *,'error'
else
if (any(s2%to/=10))write(6,*) "NG"
endif
print *,'pass'

end
