call ss(max(1,2.,3))
print *,'pass'
contains
subroutine ss(r)
if (abs(r-3.0)>0.001)print *,101
end subroutine
end
