program main
  integer :: i = 1
  interface sub
     subroutine sub1(i)
       integer :: i
     end subroutine sub1
     subroutine sub2(i)
       real :: i
     end subroutine sub2
  end interface
  procedure(sub1), pointer :: p
  p => sub1
  block
    real :: j = 1
    procedure(sub2), pointer :: p
    p => sub2
    call p(j)
    if (j/=3) print *,1
  end block
  call p(i)
  if (i/=2) print *,2
  print *,'pass'
end program main

subroutine sub1(i)
  integer :: i
  i = i + 1
end subroutine sub1
subroutine sub2(i)
  real :: i
  i = i + 2
end subroutine sub2
