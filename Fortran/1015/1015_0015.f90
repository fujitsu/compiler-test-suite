real a
call sub(a)
  if(a .eq. 1) then
    print *, 'pass'
  else
    print *, 'ng'
  end if
end

subroutine sub(a)
integer a
  a = 1
end
