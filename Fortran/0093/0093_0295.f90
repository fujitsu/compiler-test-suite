complex:: pp(10,10)
real ::r(5)
pp=(5,6)
associate(asc=>pp)
    r=asc(5,1:10:2)%im
    if(any(r .ne. 6))print*,"101"
    print*,"pass"
end associate

end

