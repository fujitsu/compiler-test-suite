        common /com/i,j
	integer*2,parameter:: i2_1 = 1
	integer*2,parameter:: i2_mask1 = z'ffff'
	integer*2,parameter:: i2_mask2 = z'ff00'
	integer*2,parameter:: i2_p0 = 0
	integer*2,parameter:: i2_p1 = 1
	integer*2,parameter:: i2_p8 = 8
	integer*2,parameter:: i2_p15 = 15
	print 1,iand(i2_mask1,not(ishft(i2_1,i2_p0)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,i2_p1)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,i2_p8)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,i2_p15)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,0)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,1)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,8)))+i-j
	print 1,iand(i2_mask1,not(ishft(i2_1,15)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,i2_p0)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,i2_p1)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,i2_p8)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,i2_p15)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,0)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,1)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,8)))+i-j
	print 1,iand(i2_mask2,not(ishft(i2_1,15)))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,i2_p0))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,i2_p1))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,i2_p8))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,i2_p15))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,0))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,1))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,8))+i-j
	print 1,ior(i2_mask1,ishft(i2_1,15))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,i2_p0))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,i2_p1))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,i2_p8))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,i2_p15))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,0))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,1))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,8))+i-j
	print 1,ior(i2_mask2,ishft(i2_1,15))+i-j
	print 2,iand(i2_mask1,not(ishft(i2_1,i2_p0)))
	print 2,iand(i2_mask1,not(ishft(i2_1,i2_p1)))
	print 2,iand(i2_mask1,not(ishft(i2_1,i2_p8)))
	print 2,iand(i2_mask1,not(ishft(i2_1,i2_p15)))
	print 2,iand(i2_mask1,not(ishft(i2_1,0)))
	print 2,iand(i2_mask1,not(ishft(i2_1,1)))
	print 2,iand(i2_mask1,not(ishft(i2_1,8)))
	print 2,iand(i2_mask1,not(ishft(i2_1,15)))
	print 2,iand(i2_mask2,not(ishft(i2_1,i2_p0)))
	print 2,iand(i2_mask2,not(ishft(i2_1,i2_p1)))
	print 2,iand(i2_mask2,not(ishft(i2_1,i2_p8)))
	print 2,iand(i2_mask2,not(ishft(i2_1,i2_p15)))
	print 2,iand(i2_mask2,not(ishft(i2_1,0)))
	print 2,iand(i2_mask2,not(ishft(i2_1,1)))
	print 2,iand(i2_mask2,not(ishft(i2_1,8)))
	print 2,iand(i2_mask2,not(ishft(i2_1,15)))
	print 2,ior(i2_mask1,ishft(i2_1,i2_p0))
	print 2,ior(i2_mask1,ishft(i2_1,i2_p1))
	print 2,ior(i2_mask1,ishft(i2_1,i2_p8))
	print 2,ior(i2_mask1,ishft(i2_1,i2_p15))
	print 2,ior(i2_mask1,ishft(i2_1,0))
	print 2,ior(i2_mask1,ishft(i2_1,1))
	print 2,ior(i2_mask1,ishft(i2_1,8))
	print 2,ior(i2_mask1,ishft(i2_1,15))
	print 2,ior(i2_mask2,ishft(i2_1,i2_p0))
	print 2,ior(i2_mask2,ishft(i2_1,i2_p1))
	print 2,ior(i2_mask2,ishft(i2_1,i2_p8))
	print 2,ior(i2_mask2,ishft(i2_1,i2_p15))
	print 2,ior(i2_mask2,ishft(i2_1,0))
	print 2,ior(i2_mask2,ishft(i2_1,1))
	print 2,ior(i2_mask2,ishft(i2_1,8))
	print 2,ior(i2_mask2,ishft(i2_1,15))
1       format(1h ,z8.8)
2       format(1h ,z4.4)
        end
	block data
	common /com/i,j
	data i/1/
	data j/1/
	end
