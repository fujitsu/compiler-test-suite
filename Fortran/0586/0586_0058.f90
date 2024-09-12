  character (kind = 4) :: c*3
  character(kind = 4),target::ct*3 = repeat( 4_"c", 3)
   character (kind = 4),pointer::ptr*3
  integer :: k = kind(repeat( 4_"c", 3))
  data c,ptr / 4_"c", ct/
  ptr=>ct
   if ( k /= kind(repeat( 4_"c", 3))) print *, 101
   if ( c /= 4_"c" ) print *, 102
    print *, "PASS"
    end

