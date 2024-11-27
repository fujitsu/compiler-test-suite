interface 
  subroutine sub(a, b, c)
    integer a, b
    integer,target:: c
  end subroutine
end interface

  integer a, b, c
  target c

  call sub(a, b, c)
end 

subroutine sub(a, b, c)
  integer,target:: a
  integer b, c
end
