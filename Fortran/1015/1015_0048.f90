interface
  subroutine sub(a, b, c, d)
    integer,dimension(3,3):: a, c
    integer,dimension(:,:):: b, d
  end subroutine
end interface

  integer,dimension(3,3):: a, b, c, d
  call sub(a, b, c, d)
end

subroutine sub(s, r, t, u)
  integer,dimension(3,3):: s, r
  integer,dimension(:,:):: t, u
end
