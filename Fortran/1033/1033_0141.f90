subroutine s(i1,i2,i3,i4,is)
integer(4),intent(in)::i1,i2
integer(8)::array(268435456)
integer(4)::brray(536870912)

brray(i3:i4) = 0_8
brray(i1:i2) = 0_4
array = array(i3:i4) + brray(i3:i4)+1_8
end

program main
  is = 0
  call t(is)
end program main

subroutine t(is)
  i1 = 777
  i2 = 888
  i3 = 777
  i4 = 888
  if ( is == 0 ) then
    is = 112
    go to 1000
  endif
  call s(i1,i2,i3,i4,is)
1000 continue
  if (is .ne. 112) print *,'error',is
  print *,'pass'
end subroutine t
