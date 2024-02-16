subroutine sub
  complex(kind=16):: valc16= (8,9)
  complex(kind=8) :: valc8 = (1,2)
  complex(kind=4) :: valc4 = (3,4)
  complex(kind=2) :: valc2 = (5,6)
  complex(kind=4) :: tmp

  tmp = valc2

  print *,valc16
  print *,valc8
  print *,valc4
  print *,tmp
end subroutine sub

program xyz
  call sub
end program xyz
