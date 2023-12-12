module m1
  integer ::k
end 

module m2
  integer,parameter :: d = 2
end module m2

module m3
  use m2 
  use m1
  integer :: e = d
end module m3

  use m3, ONLY :
  use m1 
  implicit none

k=1
  write(1,*)k

print *,'pass'

end
