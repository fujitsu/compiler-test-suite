integer(1):: a
call sub(a)
  if(a .eq. 1) then
    print *, 'pass: '
  else
    print *, 'ng: '
  end if
end

subroutine sub(a)
integer(2):: a
  a = 1
end
