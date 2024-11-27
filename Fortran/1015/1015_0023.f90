interface
  subroutine sub(a, b, c)
    integer,dimension(2,2):: a
    integer,dimension(3,3,3):: b
    integer,dimension(4,4,4,4):: c
  end subroutine
end interface

  integer,dimension(2,2):: a
  integer,dimension(3,3,3):: b
  integer,dimension(4,4,4,4):: c
  call sub(a, b, c)
end

subroutine sub(a, b, c)
  integer,dimension(1,1,4):: a
  integer,dimension(3,3,3):: b
  integer,dimension(16,4,4):: c
end subroutine
