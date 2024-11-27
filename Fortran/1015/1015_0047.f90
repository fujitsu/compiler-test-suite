interface
  subroutine sub(a, b, c, d)
    integer,allocatable,dimension(:,:):: b, d
    integer,dimension(:,:):: a, c
  end subroutine
end interface

  integer,dimension(3,3):: i, k
  integer,dimension(:,:),allocatable:: j, l

  call sub(i, j, k, l)
end

subroutine sub(a, b, c, d)
  integer,dimension(:,:):: a, b, c, d
  allocatable:: c, d
end
