	integer*8 i
	i = 1
	if( i == 0 ) print *,' NG '
	if( i /= 0 ) print *,' OK '
	if( i >= 0 ) print *,' OK '
	if( i >  0 ) print *,' OK '
	if( i <= 0 ) print *,' NG '
	if( i <  0 ) print *,' NG '
	i = 0
	if( i == 0 ) print *,' OK '
	if( i /= 0 ) print *,' NG '
	if( i >= 0 ) print *,' OK '
	if( i >  0 ) print *,' NG '
	if( i <= 0 ) print *,' OK '
	if( i <  0 ) print *,' NG '
	i = -1
	if( i == 0 ) print *,' NG '
	if( i /= 0 ) print *,' OK '
	if( i >= 0 ) print *,' NG '
	if( i >  0 ) print *,' NG '
	if( i <= 0 ) print *,' OK '
	if( i <  0 ) print *,' OK '
	end
