complex,parameter:: cmp(4) = (2.7,3)
if(any(anint(cmp%re) .ne. 3)) print*,"101"
print*,"pass"
end

