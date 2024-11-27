interface
  subroutine sub(a, b, c, d)
    external b, d
  end subroutine
end interface

external sub1,sub2
real x, y

call sub(x, sub1, y, sub2)
end

subroutine sub(a, b, p1, p2)
  external p1, p2

  call p1()
  call p2()
end

subroutine sub1()
end

subroutine sub2()
end
