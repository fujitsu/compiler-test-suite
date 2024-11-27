subroutine s1
  integer :: a1(2)
  n2=2;n3=3;k3=3
  a1=1
  write(1,*)a1(n3:k3)
  write(1,*)a1(n3:n2)
end
call s1
print *,'pass'
end
