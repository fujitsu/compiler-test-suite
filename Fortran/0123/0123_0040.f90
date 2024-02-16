  type ty1
     real(kind=2) :: r1 = 1.0
     real(kind=4) :: r2 = 2.0
     complex(kind=2) :: c1 = (1.0,2.0)
     complex(kind=8) :: c2 = (3.0,4.0)
     complex(kind=2) :: c3(3) = (4.0,5.0)
     complex(kind=2) :: c4(2) = (/(4.0,5.0),(9.0,8.0)/)
  endtype ty1
  type(ty1),target :: str1

  if (str1%r1 .ne. 1.0) print *,"NG"
  if (str1%r2 .ne. 2.0) print *,"NG"
  if (str1%c1 .ne. (1.0,2.0)) print *,"NG"
  if (str1%c2 .ne. (3.0,4.0)) print *,"NG"
  if (str1%c3(1) .ne. (4.0,5.0)) print *,"NG"
  if (str1%c3(2) .ne. (4.0,5.0)) print *,"NG"
  if (str1%c3(3) .ne. (4.0,5.0)) print *,"NG"
  if (str1%c4(1) .ne. (4.0,5.0)) print *,"NG"
  if (str1%c4(2) .ne. (9.0,8.0)) print *,"NG"

  print *,"OK"
end program
