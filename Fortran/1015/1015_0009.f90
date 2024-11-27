program main
  type x1
    integer i
    real x, y
  end type
  type x2
    sequence
    integer i
    real x, y
  end type
  type(x1):: a
  type(x2):: b
  call sub(a, b)
  print *, a, b
end

subroutine sub(a, b)
  type x1
    integer i
    real x, y
  end type
  type x2
    sequence
    integer i
    real x, y
  end type
  type(x1):: a
  type(x2):: b
  a = x1(1, 2.0, 3.0)
  b = x2(4, 5.0, 6.0)
end
