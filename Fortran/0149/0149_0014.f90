program main
  integer :: i=1
  block
    integer :: j=1
    interface
       subroutine sub(a)
         integer :: a
       end subroutine
    end interface
    call sub(j)
    if (j/=3) print *,1
  end  block
  call sub(i)
  if (i/=2) print *,2
  print *,'pass'
  contains 
    subroutine sub(a)
      integer :: a
      a = a + 1
    end subroutine sub
end program main

subroutine sub(a) 
  integer :: a
  a = a + 2
end subroutine sub
