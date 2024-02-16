module m1
  complex:: aa(2)
  contains
  subroutine s1()
        aa = (2,3) 
  end subroutine
  subroutine s2()
        aa(2)%im = 5
  end subroutine
end module
use m1
  call s1()
  if(any(aa%im .ne. 3)) print*,"121"
  call s2()
  if(aa(2)%im .ne. 5) print*,"122"
  print*,"Pass"
end
