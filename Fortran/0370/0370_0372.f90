
subroutine calc(in1,in2,out)
  implicit none
  integer(kind=4),intent(in)  :: in1,in2
  integer(kind=4),intent(out) :: out
  out = in1 * in2
end subroutine calc

program xxx
  implicit none
  integer(kind=4) :: ret
  integer(kind=4) :: gfuncret
  interface
     function gfunc(in)
       integer(kind=4) :: in
       integer(kind=4) :: gfunc
     end function gfunc
     subroutine calc(in1,in2,out)
       implicit none
       integer(kind=4),intent(in)  :: in1,in2
       integer(kind=4),intent(out) :: out
     end subroutine calc
  end interface
  procedure(calc),pointer :: pp => calc
  call pp(4,5,ret)
  print *, ret
  gfuncret = gfunc(10)
  print *, gfuncret
  call gsub
end program xxx

function gfunc(in)
  implicit none
  integer(kind=4) :: in
  integer(kind=4) :: out
  integer(kind=4) :: gfunc
  interface 
     subroutine calc(in1,in2,out)
       implicit none
       integer(kind=4),intent(in)  :: in1,in2
       integer(kind=4),intent(out) :: out
     end subroutine calc
  end interface
  procedure(calc),pointer :: p1 => calc

  call p1(in,in,out)
  gfunc = out
  print *, gfunc
  return
end function gfunc

subroutine gsub
  interface 
     subroutine calc(in1,in2,out)
       implicit none
       integer(kind=4),intent(in)  :: in1,in2
       integer(kind=4),intent(out) :: out
     end subroutine calc
  end interface
  integer(kind=4) :: out
  procedure(calc),pointer :: p1 => calc

  call p1 (3,4,out)
  print *, out
end subroutine gsub
