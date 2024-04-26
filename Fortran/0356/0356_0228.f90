subroutine sub()
  real(4) a(16)
  n = ifun()
  do i=1,n
     a(i) = 0.0
  end do
  if (all(a .eq. 0) ) then
    print *, 'PASS'
  else
    print *, a
  endif
end subroutine sub

call sub
end

integer function ifun()
ifun = 16
end
