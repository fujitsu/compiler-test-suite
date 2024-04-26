subroutine sub
  implicit none
  common/ttt/p
  common/com/array(1000)
  integer*8 array,i,taa
  pointer(p, taa(1000))
  do i=1,1000
     array(i) = loc(taa(2))
  end do
end
program main
  implicit none
  common/ttt/p
  common/com/array(1000)
  pointer(p, taa(1000))
  integer*8 array,taa,i
  p = loc(array)
  call sub
  do i=1,1000
    if (array(i) .ne. loc(array(2))) then
      print *,"NG"
      stop
    endif
    if (array(i) .ne. loc(taa(2))) then
      print *,"NG"
      stop
    endif
  enddo
  print *,"PASS"
end program main
