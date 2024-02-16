  complex:: aa(2) = (2,3)
  aa(2) = (5,7)

  call s1(aa)
  contains
  subroutine s1(dmy)
  complex:: dmy(2)
  integer :: arr(int(dmy(2)%im))
  if(size(arr) .ne. 7) print*,"121"
  print*,"Pass"
  end subroutine
end
