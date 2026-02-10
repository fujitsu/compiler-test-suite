subroutine s(i1,i2,i3,i4,is)
integer(4),intent(in)::i1,i2
integer(8),intent(inout)::is
integer(8), allocatable :: array(:)
integer :: j

allocate(array(268435456))

array(i1:i2) = 0_8
array(i1:i2) = array(i3:i4) + 1_8
do j = i1 , i2
is = is + array(j)
enddo
if (allocated(array)) then
  deallocate(array)
end if
end

program main
integer(8)::is
  is = 0
  call t( is )
end program main

subroutine t(is)
integer(8)::is
  i1 = 777
  i2 = 888
  i3 = 777
  i4 = 888
  if (is == 0) then
   is = 112_8
   goto 1000
  endif
  call s(i1,i2,i3,i4,is)
1000 if (is .ne. 112_8) print *,'error',is
  print *,'pass'
end subroutine
