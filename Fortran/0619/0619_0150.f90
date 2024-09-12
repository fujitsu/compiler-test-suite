subroutine s1
 type x
    integer::x1
    integer,allocatable::x2(:)
    integer::x3
 end type
 type (x),allocatable::v1
 type (x),pointer    ::v2
  allocate(v1)
  allocate(v2)
if (allocated(v1%x2))print *,101
if (allocated(v2%x2))print *,102
write(1, '(z8.8)'),v1%x1
write(1, '(z8.8)'),v1%x3
write(1, '(z8.8)'),v2%x1
write(1, '(z8.8)'),v2%x3
end
call s1
print *,'pass'
end
