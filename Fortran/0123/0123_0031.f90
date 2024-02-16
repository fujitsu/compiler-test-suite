  real(kind=2),target :: r1 = 1.0
  real(kind=4),target :: r2 = 2.0
  complex(kind=2),target :: c1 = (1.0,2.0)
  complex(kind=8),target :: c2 = (3.0,4.0)

  real(kind=2),pointer :: pr1 => r1
  real(kind=4),pointer :: pr2 => r2
  complex(kind=2),pointer :: pc1 => c1
  complex(kind=8),pointer :: pc2 => c2

  type ty1
     real(kind=2) :: r1 = 1.0
     complex(kind=2) :: c1 = (1.0,2.0)
  end type ty1
  type(ty1),target :: str1
  type(ty1),pointer :: pstr1=>str1
  
  if (pr1 .ne. 1.0) print *,"NG"
  if (pr2 .ne. 2.0) print *,"NG"
  if (pc1 .ne. (1.0,2.0)) print *,"NG"
  if (pc2 .ne. (3.0,4.0)) print *,"NG"
  if (pstr1%r1 .ne. 1.0) print *,"NG"
  if (pstr1%c1 .ne. (1.0,2.0)) print *,"NG"
  
  print *,"OK"
end program
