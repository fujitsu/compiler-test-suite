subroutine s1(n)
  type x1
    integer::xx1
  end type
  type,extends(x1):: x2
    integer::xx2
  end type
  type,extends(x2):: x3
    integer::xx3
  end type
  type (x1),target::v1
  type (x2),target::v2
  type (x3),target::v3
  class (x1),pointer:: p
  if (n==3) p=> v3
  end
call s1(3)
print *,'pass'
end
