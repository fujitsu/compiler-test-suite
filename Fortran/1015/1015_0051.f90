call sub(i, 10)
end

subroutine sub(a, b)
  integer,intent(out):: a
  integer,intent(inout):: b

  a = b
  b = a+b
end
