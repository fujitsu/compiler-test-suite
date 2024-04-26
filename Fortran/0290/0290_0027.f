	block data
	integer*2 i,j,one,icom
	common/com/icom
	data icom/3/
	end
	program main
	integer*2 i,j,one,icom
	common/com/icom
	parameter(one=1)
	i = -24
	j = ishft( i , 3 )
	if( j.ne.-192 ) print *,' NG 1 : ',j
	j = ishft( i+one , 3 )
	if( j.ne.-184 ) print *,' NG 2 : ',j
	j = ishft( i, -3 )
	if( j.ne.8189 ) print *,' NG 3 : ',j
	j = ishft( i, icom )
	if( j.ne.-192 ) print *,' NG 4 : ',j
	print *,' pass '
	end
