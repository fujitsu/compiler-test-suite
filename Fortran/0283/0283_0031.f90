Program main
  integer :: a = 2
  character :: b = "P"
  Associate(p=>a)
    p = 1
  Print *,p
  End Associate
  Associate(p=>b)
    Print *,b,'ass with 1'
  End Associate
End
