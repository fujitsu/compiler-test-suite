subroutine s1
integer::k=2,k2=9
do i=1,3
block
  integer:: a(k)
  if (size(a)/=k)print *,101
  k=k+1
  if (size(a)/=k-1)print *,102
  read(1,*,end=10) k1,k2
  print *,103
end block
10 continue
if (k1/=2) print *,201
if (k2/=9) print *,202
rewind 1
end do
end
write(1,*) 2
rewind  1
call s1
print *,'pass'
end
