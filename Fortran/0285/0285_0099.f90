integer :: ii=2

associate(aa=>ii)
 if(aa==2) print*,'pass1/2'
 select case(aa)
  case(1)
    print*,101
  case(2)
    print*,'pass2/2'
 end select
end associate
print*,'hi'
end
