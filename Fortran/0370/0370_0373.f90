
  implicit none
  interface
     function gfunc(in)
       integer(kind=4) :: in
       integer(kind=4) :: gfunc
     end function gfunc
     subroutine gsub
     end subroutine gsub
  end interface
  real(kind=4) ret
  ret = infunc(3.0)
  print *, ret
  call insub

  contains
    real(kind=4) function infunc(in)
      real(kind=4) :: in
      procedure(gfunc),pointer :: p1 => gfunc
      procedure(gsub),pointer :: p2 => gsub

      print *, p1(INT(in))
      call p2
      infunc = in * in
      print *,"aa"
    end function infunc

    subroutine insub
      procedure(gfunc),pointer :: p1 => gfunc
      procedure(gsub),pointer :: p2 => gsub
      print *, p1(4)
      call p2
    end subroutine insub
end


function gfunc(in)
  implicit none
  integer(kind=4) :: in
  integer(kind=4) :: gfunc

  gfunc = in + in
  return
end function gfunc

subroutine gsub
  print *, "gsub"
end subroutine gsub
