type z
  integer(8),allocatable,dimension(:)::zi8
end type
type(z)                              ::a

  a = z((/1_8,2_8,3_8/))

  if (.not.allocated(a%zi8)) write(6,*) "NG"
  if (any(a%zi8/=(/1_8,2_8,3_8/))) write(6,*) "NG"

 print *,'pass'
end
