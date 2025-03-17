program main
  is = 0
  call t( is )
  print *,'pass'
end program main

subroutine t( is )
  if ( is == 0 ) goto 1000
  call s1(1,2,is)
  call s2(1,2,is)
  call s3(1,2,is)
1000 continue
end

subroutine s1(i1,i2,is)
 integer(4),intent(in)::i1,i2
 integer(8)::array(268435455)
 integer(8)::brray(268435456)
  brray = is
  array = array(i1:i2) + brray(i1:i2-1)
  is = is + 1
end

subroutine s2(i1,i2,is)
 integer(4),intent(in)::i1,i2
 integer(8)::array(268435456)
 integer(8)::brray(268435455)

  brray = is
  array = array(i1:i2) + brray(i1:i2-1)
  is = is + 1
end

subroutine s3(i1,i2,is)
 integer(4),intent(in)::i1,i2
 integer(8)::array(268435457)
 integer(8)::brray(268435458)

  brray = is
  array = array(i1:i2) + brray(i1:i2-1)
  is = is + 1
end
