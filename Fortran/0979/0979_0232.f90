module mod
  real,PROTECTED ::temp_a, temp_b
  real,PROTECTED :: temp_c
  EQUIVALENCE(temp_a,temp_b,temp_c)
  EQUIVALENCE(temp_a,temp_b)
end module

print *,'pass'
stop
end
