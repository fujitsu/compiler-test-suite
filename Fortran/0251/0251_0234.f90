dimension ::arr(4,4)
arr=0
block
dimension :: arr(2:5)
integer::arr
arr=100
if(SIZE(arr)==4)print*,"pass",arr
end block
if(SIZE(arr)==16)print*,"pass",arr(2,2)
end
