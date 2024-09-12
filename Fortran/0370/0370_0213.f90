subroutine sub
  type ty1
     integer :: t1 = 1
  endtype ty1
  type(ty1),target,save :: str1
  type(ty1),pointer :: p0 => str1

  print *,str1
  print *,p0
end subroutine sub

call sub
end program
