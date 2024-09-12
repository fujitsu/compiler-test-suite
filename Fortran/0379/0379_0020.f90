enum,bind(C)
  enumerator :: i1 = 100_1
  enumerator :: i2 = 100_2
  enumerator :: i4 = 100_4
  enumerator :: i8 = 100_8
end enum
if (kind(i1) .ne. 4) print *,'snemm0304_019.f90 err'
if (kind(i2) .ne. 4) print *,'snemm0304_019.f90 err'
if (kind(i4) .ne. 4) print *,'snemm0304_019.f90 err'
if (kind(i8) .ne. 4) print *,'snemm0304_019.f90 err'
print *,'snemm0304_019.f90 ok'
end
