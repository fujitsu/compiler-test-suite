subroutine sub (str1, str2, ret)
  character*5 str1(10),str2(10)
  integer ret
  
  if (str1(1) .eq. str2(2)) then
     ret = ret + 100
  else
     ret = ret + 200
  endif

end subroutine sub

program main
  character*5 str1(10),str2(10)
  integer ret

  str1="abcde"
  str2="zyxwv"
  ret = 0
  call sub (str1,str2,ret)
  call sub (str1,str2,ret)
  call sub (str1,str2,ret)

  if (ret .eq. 600) then
     print *, "OK"
  else
     print *, "NG"
  endif
  
end program main
