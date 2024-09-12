recursive subroutine s1
 real(4):: y(5)
  type x
    integer::x1
    integer,pointer::x2
  end type
  type(x)::v
  r=v%x1 + 3.0
  if (r/=3.0) print *,101
end
call s1
print *,'pass'
end
