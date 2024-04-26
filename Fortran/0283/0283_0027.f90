Program main
  integer :: arr(10,10)=2
    Associate(p=>arr(2:,:))
     if(all(p==2)) print *,'pass'
    End Associate
End
