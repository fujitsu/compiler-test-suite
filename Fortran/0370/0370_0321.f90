
block data
  common /comx/ tc1,tc2,tp1,tp2
  complex(kind=4),target  :: tc1 = (1.0_8, 2.0_8)
  complex(kind=8),target  :: tc2 = (3.0_8, 4.0_8)
  complex(kind=4),pointer :: tp1
  complex(kind=8),pointer :: tp2
  data tp1,tp2 /tc1,tc2/
end block data

program main
  common /comx/ tc1,tc2,tp1,tp2
  complex(kind=4),target  :: tc1
  complex(kind=8),target  :: tc2
  complex(kind=4),pointer :: tp1
  complex(kind=8),pointer :: tp2

  print *, tc1
  print *, tc2
  print *, tp1
  print *, tp2
  print *, "-------------"
  call sub
end program main

subroutine sub
  common /comx/ tc1,tc2,tp1,tp2
  complex(kind=4),target  :: tc1
  complex(kind=8),target  :: tc2
  complex(kind=4),pointer :: tp1
  complex(kind=8),pointer :: tp2

  print *, tc1
  print *, tc2
  print *, tp1
  print *, tp2
end subroutine sub

