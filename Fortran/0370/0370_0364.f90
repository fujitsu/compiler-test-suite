
subroutine suba()
  print *, "suba"
  entry subb ()
  print *, "subb"
end subroutine suba
    
subroutine xxx()
  interface
     subroutine suba()
     end subroutine suba
     subroutine subb()
     end subroutine subb
  end interface
  procedure(suba),pointer :: p1=>suba
  procedure(subb),pointer :: p2=>subb
  
  call p1
  call p2
end subroutine xxx

call xxx
end
