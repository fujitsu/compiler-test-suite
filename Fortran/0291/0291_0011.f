        real*4    r4
        real*8    r8
        real*16   r16
	integer*4 i4,i
	integer*8 i8,i81
	i  = 3
	i4 = 2
	if( i**i4 .ne. 9 ) print *,' NG 1 '
	i8 = 3
	i4  = 2
	if( i8**i4 .ne. 9 ) print *,' NG 2 '
	r4 = 3.0
	i4 = 2
	if( r4**i4 .ne. 9 ) print *,' NG 3 '
	r8 = 3.0
	i4 = 2
	if( r8**i4 .ne. 9 ) print *,' NG 4 '
	r16 = 3.0
	i4 = 2
	if( r16**i4 .ne. 9 ) print *,' NG 5 '
	i  = 3
	i8 = 2
	if( i**i8  .ne. 9 ) print *,' NG 6 '
	i81 = 3
	i8  = 2
	if( i81**i8 .ne. 9 ) print *,' NG 7 '
	r4 = 3.0
	i8 = 2
	if( r4**i8  .ne. 9 ) print *,' NG 8 '
	r8 = 3.0
	i8 = 2
	if( r8**i8.ne. 9  ) print *,' NG 9 '
	r16 = 3.0
	i8 = 2
	if( r16**i8 .ne. 9 ) print *,' NG 10 '
	print *,' PASS '
	end
