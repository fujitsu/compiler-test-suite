complex:: pp(10)
real ::r(5)
pp=(7,8)
associate(asc=>pp(2:3))
    if(any(asc(:)%im .ne. 8))print*,"101"
    print*,"pass"
end associate
end

