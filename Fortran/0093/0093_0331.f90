complex , save :: abc(2)
abc(1) = (3.45,7.43)
abc(2) = (5.34,3.23)
  xyz: select case(int(abc(2)%im))
  case (1)
     if(int(abc(1)%im) .ne. 7) print*, "101"
  case (3)
     if(int(abc(2)%im) .ne. 3) print*, "102"
  case default
     if(int(abc(2)%re) .ne. 5) print*,103
  end select xyz
  PRINT*,"PASS"
end
