  type xxx
    sequence
    integer a
  end type
  type(xxx):: z
  call sub1(z)
  end

subroutine sub1(a)
  type xxx
    sequence
    integer,pointer:: a
  end type
  type(xxx):: a
end

