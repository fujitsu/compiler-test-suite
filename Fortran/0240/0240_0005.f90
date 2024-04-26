character(len=9)::adjusted
adjusted = adjustl(' string')
if (adjusted.ne.'string ') print *,'err'
print *,'pass'
end
