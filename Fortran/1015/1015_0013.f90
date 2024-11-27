call xxx(1, 2, 3)
end

subroutine xxx(a, b, c, d)
  integer a, b, c, d

  if(a.ne.1 .or. b.ne.2 .or. c.ne.3 .or. d.ne.4) then
    print *, 'error: '
  else
    print *, 'pass: '
  end if
end
