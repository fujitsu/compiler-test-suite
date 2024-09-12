
  implicit none
  interface
     function gfunc(in)
       integer(kind=4) :: in
       integer(kind=4) :: gfunc
     end function gfunc
     subroutine gsub
     end subroutine gsub
  end interface
  real(kind=4) :: ret
  ret = infunc(3.0)
  print *, ret
  call insub

  contains
    real(kind=4) function infunc(in)
      real(kind=4) :: in
      type tp
         procedure(gfunc),pointer,nopass :: p1 => gfunc
         integer s0
         procedure(gsub),pointer,nopass :: p2 => gsub
      end type tp
      type(tp)::str
      
      print *, str%p1(INT(in))
      call str%p2
      infunc = in * in
      print *,"aa"
    end function infunc

    subroutine insub
      type tp
         integer(kind=1) :: s1 = 1
         procedure(gfunc),pointer,nopass :: p1 => gfunc
         integer(kind=1) :: s2 = 2
         procedure(gsub),pointer,nopass :: p2 => gsub
         integer(kind=1) :: s3 = 3     
      end type tp
      type(tp)::str
      
      print *, str%p1(4)
      call str%p2
      print *, str%s1, str%s2, str%s3
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
