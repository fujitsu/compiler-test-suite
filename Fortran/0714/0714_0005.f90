subroutine suba
  print *, "suba"
end subroutine suba

subroutine subb
  print *, "subb"
end subroutine subb

subroutine callroutine (callf)
  interface
     subroutine subb
     end subroutine subb
  end interface
  procedure(),pointer :: callf=>subb

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

  procedure(suba),pointer :: pp => suba

  call pp
  call callroutine (pp)
end program xxx
