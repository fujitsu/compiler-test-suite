subroutine sub
  complex(kind=8) :: c8
  complex(kind=4) :: c4
  complex(kind=2) :: c2
  complex(kind=4) :: tmp

  data c8%re /2.0/
  data c4%re /2.0/
  data c2%re /2.0/

  data c8%im /3.0/
  data c4%im /3.0/
  data c2%im /3.0/

  tmp = c2

  print *,valc8
  print *,valc4
  print *,tmp
end subroutine sub

program xyz
  call sub
end program xyz
