program main
integer(kind=4) j
j=z'80000000'
call sub(j)
end
subroutine sub(j)
integer(kind=4),parameter:: k=z'ffffffff'
integer(kind=4) j
integer(kind=4) i,ii
ii=rshift(j,31)
i=rshift(ii,1)
if (i == k) then
  print *,'ok'
else
  print *,'ng'
endif
end
