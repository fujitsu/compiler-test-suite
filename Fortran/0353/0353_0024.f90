subroutine sub
  implicit none
  common/ttt/taa(1002)
  common/com/array(1000)
  integer*8 array,i,taa
  do i=1,1000
     array(i) = loc(taa(i+2))
  end do
end
program main
  implicit none
  common/ttt/taa(1002)
  common/com/array(1000)
  integer*8 array,taa,i
  call sub
  do i=1,1000
    if (array(i) .ne. loc(taa(i+2))) then
      print *,"NG"
      stop
    endif
  enddo
  print *,"PASS"
end program main
