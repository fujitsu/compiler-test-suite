subroutine file
  block
    open(1,file='tmp')
    backspace 1
    endfile 1
    rewind 1
    flush 1
    inquire (1)
    write (1,*) 'hoge'
    close (1,status='delete')
  end block
end subroutine file

subroutine stop_st
  block
    stop
  end block
end subroutine stop_st

subroutine calc
  block
    integer :: a(5), b(5)
    forall (i=1:5) a(i) = i
    forall (i=1:5) b(i) = 5 - i
    where (a>b) a = b
  end block
end subroutine calc

subroutine nul
  block
    integer, pointer :: p
    nullify(p)
  end block
end subroutine nul

subroutine arithmetic_if
  block
    integer :: i = 1
    if(i) 1,2,3
1   print *,1
2   print *,2
3   return
  end block
end subroutine arithmetic_if

program main
  call file
  call calc
  call nul
  call arithmetic_if
  print *,'pass'
end program main
