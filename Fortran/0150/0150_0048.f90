subroutine foo
  interface gen
     subroutine sub
     end subroutine sub
  end interface
  call gen
  block
    interface gen
       subroutine sub2(i)
         integer :: i
       end subroutine sub2
    end interface
  end block
  block
    interface gen
       subroutine sub2(i)
         integer :: i
       end subroutine sub2
    end interface
  end block
end subroutine foo

subroutine sub()
end subroutine

program main
  call foo
  print *,'pass'
end program main
