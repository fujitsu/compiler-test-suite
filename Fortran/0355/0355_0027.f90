
subroutine check(a,b)
  integer a,b

  if (a .ne. b) then
     print *,"NG"
  end if
end subroutine check

function sub(a,b)
  integer a,b
  integer sub

  call check (a,b)
  sub = a * b
  return
  call check (a,b)
end function sub

program main
  integer :: ret = 0
  integer i
  interface
     function sub(a,b)
       integer a,b
       integer sub
     end function sub
     subroutine check(a,b)
       integer a,b
     end subroutine check
  end interface

  do i=0,5
     if ((i / 4) .ne. 0) then
        ret = ret + sub (i, i)
     end if
  end do

  if (ret .eq. 41) then
     print *, "OK"
  endif
end program main
