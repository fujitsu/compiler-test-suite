integer*1 xxx1(512)
integer*1 xxx5(513)
integer*1 xxx2(127)
integer*1 xxx3(128)
integer*4 dddxssxxx(4)
integer*4 dddx(124)
common/com/xxx
common/com1/xxx1
common/com5/xxx5
common/com2/xxx2
common/com3/xxx3
real xxxx(1000000)
dddxssxxx(4)=1
dddx(124)=1
xxxx(10000)=1.0
print*,dddxssxxx(4),dddx(124),xxxx(10000)
end

