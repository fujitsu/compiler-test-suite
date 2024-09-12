
program xxx
  interface
     subroutine gsub
       implicit none
     end subroutine gsub
     function gfunc(in)
       implicit none
       integer(kind=4) :: in
       integer(kind=4) :: gfunc
     end function gfunc
  end interface

  type tp1
     procedure(gsub),pointer,nopass :: pg1 => gsub
     procedure(gfunc),pointer,nopass :: pg2 => gfunc
  end type tp1
  type(tp1) :: str

  call str%pg1
  if (str%pg2(10) .ne. 12) print *,'err1'
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
  implicit none
  print *, "gsub"
end subroutine gsub

