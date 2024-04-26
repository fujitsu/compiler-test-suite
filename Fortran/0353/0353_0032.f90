subroutine sub(taa)
  implicit none
  common/com/array(1000)
  integer*8 array,i,taa(1002)
  do i=1,1000
     array(i) = loc(taa(i+2))
  end do
end
program main
  implicit none
  common/com/array(1000)
  integer*8 array,taa(1002),i
  call sub(taa)
  do i=1,1000
    if (array(i) .ne. loc(taa(i+2))) then
      print *,"NG"
      stop
    endif
  enddo
  print *,"PASS"
end program main
