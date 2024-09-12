
program xxx
  interface
     subroutine gsub
     end subroutine gsub

     function gfunc(in)
       implicit none
       integer(kind=4) :: in
       integer(kind=4) :: gfunc
     end function gfunc

  end interface

  procedure(gsub),pointer :: pg1 => gsub
  procedure(gfunc),pointer :: pg2 => gfunc

  call pg1
  if (pg2(10) .ne. 12) print *,'err1'
end program xxx

function gfunc(in)
  implicit none
  integer(kind=4) :: in
  integer(kind=4) :: gfunc

  print *, "gfunc"
  gfunc = in + 2
  return
end function gfunc

subroutine gsub
  print *, "gsub"
end subroutine gsub

