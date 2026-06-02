subroutine s1
integer(8)::x(3)
integer::k=2
do i=1,3
block
  integer:: a(k)
  x(i)=loc(a)
  if (size(a)/=k)print *,101
  if (k>1) goto 10
  print *,103
end block
10 continue
end do
if (any(x(2:)/=x(1))) then 
  write(1,*)'confirm memory leak '
  write(1,' (1x,z16.16)')x
endif
end
call s1
print *,'pass'
end
