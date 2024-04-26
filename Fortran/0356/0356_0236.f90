program test
  implicit none
  integer::i,count
  real(8) xxx(1:3,1:3,1:3,0:1), yyy(1:3,1:3)

  xxx=3
  count=xxx(1,1,1,1)

  do i=1,count
     yyy(1,i)=xxx(1,i,1,1)
     yyy(2,i)=xxx(2,i,1,1)
     yyy(3,i)=xxx(3,i,1,1)
  end do

  write(*,'(f8.3)') yyy(1,3)
  write(*,'(f8.3)') yyy(2,3)
  write(*,'(f8.3)') yyy(3,3)
end program test
