
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
  procedure(modsub),pointer :: pg3 => modsub
  procedure(modfunc),pointer :: pg4 => modfunc
  integer(kind=4) ret
  call pg3
  ret = pg4(10)
  print *, ret
end program xxx

