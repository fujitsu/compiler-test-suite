program main
  call sub(i, 3)
  if(i .eq. 7) then
    print *, 'pass'
  else
    print *, 'ng'
  end if
end

subroutine sub(r, i1, i2)
  integer r, i1, i2
  r = i1+i2
end

  