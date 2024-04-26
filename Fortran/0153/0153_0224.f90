k=0
call s(k)
if (k/=2) print *,101
print *,'pass'
contains
subroutine s(k)
intent(out):: k
do i=1,2
  if (i==2) then
   k=k+1
  else
   k=1
  endif
end do
end subroutine
end
