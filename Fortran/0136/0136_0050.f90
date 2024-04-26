use, intrinsic :: ieee_arithmetic
real(4)::r4=1.0
real(8)::r8=1.0
real(16)::r16=1.0
if (.not.ieee_support_underflow_control()) then
  print *, 'ng0'
endif
if (.not.ieee_support_underflow_control(r4)) then
  print *, 'ng1'
endif
if(.not.ieee_support_underflow_control([1.0])) print *,'ng2'
if(.not.ieee_support_underflow_control(r8)) print *,'ng3'
if(.not.ieee_support_underflow_control(r16)) print *,'ng4'
if(.not.ieee_support_underflow_control([1.0d0])) print *,'ng5'
if(.not.ieee_support_underflow_control([1.0q0])) print *,'ng6'
if(.not.ieee_support_underflow_control([real::])) print *,'ng7'
print *,'pass'
end
