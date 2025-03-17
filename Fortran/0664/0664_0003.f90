call sub()
end

subroutine sub()
integer,save:: x(10,12)
if ((size(x,1)==10) .and. (size(x,2)==12)) then
  print *,'pass'
else
  print *,'fail'
end if
end
