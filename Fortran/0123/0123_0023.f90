subroutine sub
  complex(kind=16):: valc16= (2.0_16,2.0_16)
  complex(kind=8) :: valc8 = (2.0_8,2.0_8)
  complex(kind=4) :: valc4 = (2.0_4,2.0_4)
  complex(kind=2) :: valc2 = (2.0_2,2.0_2)
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
