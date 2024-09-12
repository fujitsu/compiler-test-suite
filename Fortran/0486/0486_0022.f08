logical,parameter::T=.true., F=.false.
logical:: result
result = parity ( [ T,T,F,T] )

if (.not.result)print *,101
print *,'pass'
end
