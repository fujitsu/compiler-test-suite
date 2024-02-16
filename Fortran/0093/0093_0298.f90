complex:: pp(10,10)
real ::r
pp(1,2)=(7,8)
pp(2,3)=(5,6)
associate(asc=>pp(1,2))
   if (asc%im .ne. 8)print*,"101"
   print*,"pass"
end associate
end

