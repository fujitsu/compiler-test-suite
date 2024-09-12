
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
  procedure(suba),pointer :: pp => suba

  call pp
  call callroutine (pp)
end program xxx

