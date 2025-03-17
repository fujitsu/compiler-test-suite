subroutine s(i1,i2,i3,i4,is)
 integer(4),intent(in)::i1,i2
 integer(8),intent(inout)::is
 integer(8)::array(268435456)
 integer(4)::brray(536870912)

  array(i1:i2) = 0_8
  brray(i3:i4) = 0_8
  array(i1:i2) = array(i3:i4) + brray(i3:i4)+1_8
  do j = i1 , i2
    is = is + array(j)
  enddo
end

program main
 integer(8)::is
  is = 0_8
  call t( is )
  print *,'pass'
end program main

subroutine t(is)
 integer(8)::is
  i1 = 777
  i2 = 888
  i3 = 777
  i4 = 888
  if ( is == 0_8 ) then
    is = 112_8
    goto 1000
  endif
  call s(i1,i2,i3,i4,is)
1000 continue
  if (is .ne. 112) print *,'error',is
end subroutine t
