	block data iii
	integer y,z
	common /com/y,z
	  data y/2/,z/5/
	end block data
	common /com/y,z
	integer y,z
	  print *, -Y - (-Z)
          print *, -Y    +Z
          print *, -(Y- (+Z))
          print *, -(Y  -Z)
          print *, -(-Z - (-Y))
	end
