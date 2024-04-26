complex :: cha(19)
data cha(1:1)%re /1/
associate(vvv=>cha)
if (abs(vvv(1)%re-(1,0)) > 0.001) print *,'err'
end associate
print *,'pass'
end
