complex :: cmp
real :: re=3.7
cmp=(3.7,0.2)
call cpu_time(cmp%re)
call cpu_time(re)
if(abs(cmp%re-re)>0.001) print*,"101"
print*,"pass"
end
