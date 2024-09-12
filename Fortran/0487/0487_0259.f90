subroutine sub(x)
  integer(4),dimension(1:80) :: x
  interface
     subroutine foo(a)
       integer(4),dimension(:),value :: a
     end subroutine foo
  end interface
  call foo(x)
end subroutine sub
     subroutine foo(a)
       integer(4),dimension(:),value :: a
     end subroutine foo
  integer(4),dimension(1:80) :: x
call sub(x)
print *,'pass'
end
