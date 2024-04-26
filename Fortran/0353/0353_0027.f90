subroutine sub
  implicit none
  common/ttt/p
  common/com/array(1001)
  integer*8 array,i,taa
  pointer(p, taa(0:1000))
  do i=1,1000
     array(i) = loc(taa(i))
  end do
end
program main
  implicit none
  common/ttt/p
  common/com/array(1001)
  pointer(p, taa(0:1000))
  integer*8 array,taa,i
  p = loc(array)
  call sub
  do i=1,1000
    if (array(i) .ne. loc(array(i+1))) then
      print *,"NG-1"
      stop
    endif
    if (array(i) .ne. loc(taa(i))) then
      print *,"NG-2"
      stop
    endif
  enddo
  print *,"PASS"
end program main
