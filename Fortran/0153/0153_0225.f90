k=0
call s(k)
print *,'pass'
contains
subroutine s(k)
intent(out):: k
k=0
do i=1,2
  if (i==0) then
   k=0
  else
   k=k+2
  endif
end do
end subroutine
end
