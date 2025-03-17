character :: x(10,12)
x="10"
call sub(x)
if ((size(x,1)==10) .or. (size(x,2)==12)) then
  print *,'pass'
else
  print *,'fail'
end if
end

subroutine sub(x)
character :: x(10,12)
x(1,2)="10"
end
