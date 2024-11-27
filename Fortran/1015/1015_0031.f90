call sub(0, xxx)
end

subroutine sub(i, proc)
  integer i

  call proc(i)
end subroutine

subroutine xxx(i)
  integer i

  if(i.eq.0) then
    print *, 'ok'
  else
    print *, 'ng'
  end if
end subroutine
