program main
  is = 0
  call t( is )
  print *,'pass'
end program main

subroutine t(is)
 integer(4)::brray(536870910)
  if ( is == 0 ) return
  call s1(is,1,1)
  call s2(is,1,1,brray)
  call s3(is,1,1)
end

subroutine s1(is,i1,i2)
 integer(4),intent(in)::i1,i2
 integer(2)::array(268435456)
 integer(2)::brray(268435455)

  array = array(i1:i2) + brray(i1:i2-1)
end

subroutine s2(is,i1,i2,brray)
 integer(4),intent(in)::i1,i2
 integer(4)::array(53687091)
 integer(4)::brray(536870910)

  array = array(i1:i2) + brray(i1:i2-1)
end

subroutine s3(is,i1,i2)
 integer(4),intent(in)::i1,i2
 integer(2)::array(268435457)
 integer(2)::brray(268435458)

  array = array(i1:i2) + brray(i1:i2-1)
end
