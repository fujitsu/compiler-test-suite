complex:: pp(10,10)
pp=(5,6)
associate(asc=>pp(3:7,2:8))
   if(any(asc(2:5,2:6)%im .ne. 6))print*,"101"
   print*,"pass"
end associate
end

