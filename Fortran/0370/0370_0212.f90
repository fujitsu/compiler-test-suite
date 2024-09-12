
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/9,8,7/)
     integer :: t3 = 3
  endtype ty1
  type(ty1),target :: str1
  type(ty1),pointer :: p0 => str1

  print *,p0
end program
