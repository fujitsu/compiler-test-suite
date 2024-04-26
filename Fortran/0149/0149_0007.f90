subroutine foo
  interface
     subroutine sub
     end subroutine sub
  end interface
  call sub
  block
    interface
       subroutine sub
       end subroutine sub
    end interface
    call sub
  end block
end subroutine foo

subroutine bar
  interface
     subroutine sub(k)
     end subroutine sub
  end interface
  call sub(1)
  block
    interface
       subroutine sub()
       end subroutine sub
    end interface
    call sub
  end block
end subroutine bar

subroutine baz
  sub=0.1
  block
    interface gen
       subroutine sub()
       end subroutine sub
    end interface
    call sub
  end block
end subroutine baz

subroutine sub()
end subroutine
      
program main
  call foo
  call bar
  call baz
  print *,'pass'
end program main
