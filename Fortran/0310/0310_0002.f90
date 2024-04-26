call sub('1234')
end
subroutine sub(arg)
character(*) arg
if (arg == '1234' .and. len(arg) == 4) then
  print *,'*** ok ***'
end if
end
