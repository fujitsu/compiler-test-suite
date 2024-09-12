
module mod
  contains
    function modfunc(in)
      integer(kind=4) :: in
      integer(kind=4) :: modfunc

      print *, "modfunc"
      modfunc = in + in
      return
    end function modfunc

    subroutine modsub
      print *, "modsub"
    end subroutine modsub
end module mod

program xxx
  use mod
  type tp
     procedure(modsub),pointer,nopass :: pg3 => modsub
     procedure(modfunc),pointer,nopass :: pg4 => modfunc
  end type tp
  type(tp) ::str
  integer(kind=4) ret
  call str%pg3
  ret = str%pg4(10)
  print *, ret
end program xxx

