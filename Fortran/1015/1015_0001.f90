  type xxx
    sequence
    integer a
  end type
  type(xxx):: z
  call sub1(z)
  end

subroutine sub1(a)
  type xxx
    integer a
  end type
  type(xxx):: a
  a = xxx(10)
end

