program main
  call s
  print *,'pass'
end program main

subroutine s
  integer,target :: i
  integer,pointer :: p
  p => i
  i = 2

  block
    integer :: a(p)
    a = [1,2]
    if (any(a /= [1,2])) print *,1
    block
      integer,target :: j
      p => j
      j = 2
    end block
    if (any(a /= [1,2])) print *,2
  end block
end subroutine s
