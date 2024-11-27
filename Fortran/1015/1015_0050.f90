interface 
  subroutine sub1(a, b)
    real,intent(out):: a
    real,intent(in):: b
  end subroutine

  elemental subroutine sub2(a, b)
    real,intent(in):: a
    real,intent(out):: b
  end subroutine
end interface

real a(10), b(10)

call sub1(a(1), b(2))
call sub2(a, b)
end

elemental subroutine sub1(a, b)
  real,intent(out):: a
  real,intent(in):: b
  a = b
end

subroutine sub2(a, b)
  real,intent(in):: a
  real,intent(out):: b
  b = a
end
