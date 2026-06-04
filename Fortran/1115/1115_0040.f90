!  -Kocl -Ksimd_reg_size=agnostic
subroutine test(a)
  real(4)  a(100)
  !ocl ilfunc
  do i=1,6
     a(i) = tan(a(i))
  end do
end subroutine test

print *,'PASS'
end
