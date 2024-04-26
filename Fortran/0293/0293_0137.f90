subroutine s
integer,allocatable::a1(:)
type x
  integer:: d
  integer,pointer::b1(:)
end type
type(x)::c(2)
integer::b(2)
allocate(a1(2),c(2)%b1(2))
a1=1
c(2)%b1=1
b=a1
b=c(2)%b1
end
call s
print *,'pass'
end
