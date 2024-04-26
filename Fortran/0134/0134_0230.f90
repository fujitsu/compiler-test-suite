integer ::a(2)=(/11,12/)
integer::vs(2)=(/2,1/)
call s(a(vs),2)
call s(a,1)
  if (any(a/=1))print *,102,a
print *,'pass'
contains
subroutine s(d,k)
integer d(2)
if (k==1) then
  d=1
else
  if (any(d/=(/12,11/)))print *,101,d
endif
end subroutine
end
