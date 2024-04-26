subroutine sub()
  integer(2) a(33)
  n = ifun()
  do i=1,n
     a(i) = 0.0
  end do
  if (all(a .eq. 0) ) then
    print *, 'PASS'
  else
    print *, 'NG'
  endif
end subroutine sub

call sub
end

integer function ifun()
ifun = 33
end
