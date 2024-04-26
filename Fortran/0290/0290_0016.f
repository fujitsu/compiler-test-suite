      integer*2   i/z'7fff'/,ip
      parameter( ip = 15 )
      i = ibset( i , ip )
      if( i+1 .eq. 0 ) then 
	print *,' OK '
      else
        print *,' NG '
      endif
      end
