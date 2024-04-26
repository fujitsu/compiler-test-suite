 character (kind = 4) :: c*12 = repeat( 4_"ab d", 3)
 integer :: k = kind(repeat( 4_"ab d", 3))

 if ( k /= kind(repeat( 4_"ab d", 3))) print *, 101
 if ( c /= repeat( 4_"ab d", 3) ) print *, 102
 print *, "PASS"
end
