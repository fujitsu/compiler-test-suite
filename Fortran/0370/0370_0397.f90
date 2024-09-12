
subroutine suba
  print *, "suba"
end subroutine suba

subroutine callroutine (callf)
  procedure(),pointer :: callf

  call callf
end subroutine callroutine

program xxx
  interface
     subroutine suba
     end subroutine suba
     subroutine callroutine(callf)
       procedure(),pointer :: callf       
     end subroutine callroutine
  end interface
  type tp
     procedure(suba),pointer,nopass :: pp => suba
  end type tp
  type(tp) str

  call str%pp
  call callroutine (str%pp)
end program xxx

