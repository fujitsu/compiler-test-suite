complex :: cha
data cha%re /1/
associate(vvv=>cha%re)
if (abs(vvv-(1,0)) > 0.001) print *,'err'
end associate
print *,'pass'
end
