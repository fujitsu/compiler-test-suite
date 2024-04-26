subroutine sub
  implicit none
  common/ttt/p
  common/com/array(1002)
  integer*8 array,i,taa
  pointer(p, taa(1002))
  do i=1,1000
     array(i) = loc(taa(i+2))
  end do
end
program main
  implicit none
  common/ttt/p
  common/com/array(1002)
  pointer(p, taa(1002))
  integer*8 array,taa,i
  p = loc(array)
  call sub
  do i=1,1000
    if (array(i) .ne. loc(array(i+2))) then
      print *,"NG"
      stop
    endif
    if (array(i) .ne. loc(taa(i+2))) then
      print *,"NG"
      stop
    endif
  enddo
  print *,"PASS"
end program main
