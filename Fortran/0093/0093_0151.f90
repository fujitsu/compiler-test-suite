complex,parameter:: cmp(4) = (5,3)
print*,RESHAPE([cmp%re,cmp%im],[2,3])
print*,"pass"
end

