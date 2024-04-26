program main
  do i = 1, 4
     block
       integer, allocatable, save :: x(:)
       integer, target, save :: y
       integer, pointer, save :: p
       select case(i)
          case (1)
             allocate(x(2))
             p => y
          case (2)
             x = [1, 2]
             y = 3
          case (3)
             if (any(x /= [1, 2])) print *,1
             if (p /= 3) print *,2
          case (4)
             deallocate(x)
          end select
    end block
  end do
  print *,'pass'
end program main
