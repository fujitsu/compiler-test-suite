module mod
  real ::temp_a, temp_b
  real :: temp_c
  EQUIVALENCE(temp_a,temp_b,temp_c)
  EQUIVALENCE(temp_a,temp_b)
end module

print *,'pass'
end
