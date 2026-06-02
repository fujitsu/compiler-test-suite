subroutine sub1
  integer::k=1
 block
      integer::a(k)
  if (size(a)/=1)print *,1001
 end block
 block
      integer::a(k+1)
  if (size(a)/=2)print *,1002
end block
end
call sub1
print *,'sngg781n : pass'
end
