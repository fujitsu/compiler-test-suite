 character (kind = 4) :: c*3 = repeat( 4_"c", 3)
 integer :: k = kind(repeat( 4_"c", 3))

 if ( k /= kind(repeat( 4_"c", 3))) print *, 101
 if ( c /= repeat( 4_"c", 3) ) print *, 102
 print *, "PASS"
end
