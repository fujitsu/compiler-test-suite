program main
  use data
  flag=1
  call sub()
  print *,"OK"
end program main

module data
  integer*8 flag
contains
  subroutine sub()
    call fatal_f()
  contains
    recursive subroutine inline_f()
      call leaf(10)
      if (flag .eq. 0) then
         call inline_f()
      end if
    end subroutine inline_f
    subroutine fatal_f()
      integer*8,allocatable::a
      allocate(a)
      call inline_f()
    end subroutine fatal_f
    subroutine leaf(n)
      complex*16 b(n)
      do i=1,n
         b(i) = i
      end do
      if (b(5) .ne. 5) then
         print *,"NG",b(5)
      end if
    end subroutine leaf
  end subroutine sub
end module data
