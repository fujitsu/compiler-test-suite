subroutine sub
  complex(kind=2) :: valc2a = (7.77_2,8.88_2)
  complex(kind=2) :: valc2b = (5.55_2,6.66_2)
  complex(kind=4) :: valc4  = (3.33_4,4.44_4)
  complex(kind=8) :: valc8  = (1.11_8,2.22_8)
  complex(kind=16):: valc16 = (1.23_16,2.34_16)
  complex(kind=4) :: tmp


  if (valc2a .ne. (7.77_2,8.88_2))   print *, "NG1"
  if (valc2b .ne. (5.55_2,6.66_2))   print *, "NG2"
  if (valc4  .ne. (3.33_4,4.44_4))   print *, "NG3"
  if (valc8  .ne. (1.11_8,2.22_8))   print *, "NG4"
  if (valc16 .ne. (1.23_16,2.34_16)) print *, "NG5"
end subroutine sub

program xyz
  call sub
  print *, "OK"
end program xyz
