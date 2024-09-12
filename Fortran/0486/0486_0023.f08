logical,parameter::T=.true., F=.false.
logical:: result
result = parity ( [ T,T,F,T] )

if (.not.result)print *,101
result = parity ( mask=[ T,T,F,T] )
if (.not.result)print *,102
result = parity ( mask=[ T,T,F,T] ,dim=1)
if (.not.result)print *,103
print *,'pass'
end
