subroutine s1
type x
  integer(1):: x1=-129
end type
type(x),pointer::p(:)
allocate(p(2))
write(1,*)v
end
call s1
print *,'pass'
end
