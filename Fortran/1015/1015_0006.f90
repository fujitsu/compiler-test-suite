program main
  call sub(i, 3, 4)
  if(i .eq. 7) then
    print *, 'pass'
  else
    print *, 'ng'
  end if
end

subroutine sub(r, i1)
  integer r, i1
  r = i1+10
end

  