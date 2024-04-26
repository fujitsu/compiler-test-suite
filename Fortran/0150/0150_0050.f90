subroutine s1
integer::k=2
do i=1,3
block
  integer:: a(k)
  if (size(a)/=k)print *,101
  k=k+1
  if (size(a)/=k-1)print *,102
  if (k>1) goto 10
  print *,103
end block
10 continue
end do
end
call s1
print *,'pass'
end
