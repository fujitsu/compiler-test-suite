complex:: pp(10,10)
real ::r(5)
pp=(5,6)
associate(asc=>pp(2,:))
  r=asc(1:10:2)%im
    if(any(r .ne. 6))print*,"101",r
    print*,"pass"
end associate
end

