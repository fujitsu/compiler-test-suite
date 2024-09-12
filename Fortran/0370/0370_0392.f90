
subroutine calc(in1,in2,out)
  implicit none
  integer(kind=4),intent(in)  :: in1,in2
  integer(kind=4),intent(out) :: out
  out = in1 * in2
end subroutine calc

program xxx
  implicit none
  integer(kind=4) :: ret, retgfunc
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
  type tp
     procedure(calc),pointer,nopass :: pp => calc
  end type tp
  type(tp)::str
  
  call str%pp(4,5,ret)
  print *, ret
  retgfunc = gfunc(10)
  print *, retgfunc
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
  type tp
     procedure(calc),pointer,nopass :: p1 => calc
  end type tp
  type(tp)::strf
  
  call strf%p1(in,in,out)
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
  type tp
     procedure(calc),pointer,nopass :: p1 => calc
  end type tp
  type(tp)::strs

  call strs%p1(3,4,out)
  print *, out
end subroutine gsub
