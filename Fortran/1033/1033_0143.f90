program main
  is = 0
  call t( is )
  print *,'pass'
end

subroutine t( is )
  if ( is == 0 ) goto 1000
  call s(i1,i2,is)
1000 continue
end subroutine t

subroutine s(i1,i2,is)
 integer(4),intent(in)::i1,i2
 integer(8)::array(268435456)
 integer(8)::brray(268435456)

  array = array(i1:i2) + brray(i1:i2)
  is = is + 1
end
