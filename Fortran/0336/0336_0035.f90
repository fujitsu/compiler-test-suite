subroutine foo(i,j)
integer i1,i2,i,j
equivalence (i1,i2)
if (i .eq. j) then
  i2 = 6
else
  i1 = 4
  i2 = 2
endif
print *,i1
end subroutine

program main
  call foo(2,1)
end program
