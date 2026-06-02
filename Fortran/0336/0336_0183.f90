program main
integer(kind=4) j
j=z'80000000'
call sub(j)
end
subroutine sub(j)
integer(kind=4) j
integer(kind=4) i,ii
ii=ishft(j,31)
i=ishft(ii,1)
if (i == 0) then
  print *,'ok'
else
  print *,'ng'
endif
end
