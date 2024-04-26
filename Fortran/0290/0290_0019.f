        common /com/i,j
	integer*2,parameter:: i2_mask1 = z'ffff'
	integer*2,parameter:: i2_mask2 = z'ff00'
	integer*2,parameter:: i2_p0 = 0
	integer*2,parameter:: i2_p1 = 1
	integer*2,parameter:: i2_p8 = 8
	integer*2,parameter:: i2_p15 = 15
	print 1,ibclr(i2_mask1,i2_p0)+i-j
	print 1,ibclr(i2_mask1,i2_p1)+i-j
	print 1,ibclr(i2_mask1,i2_p8)+i-j
	print 1,ibclr(i2_mask1,i2_p15)+i-j
	print 1,ibclr(i2_mask1,0)+i-j
	print 1,ibclr(i2_mask1,1)+i-j
	print 1,ibclr(i2_mask1,8)+i-j
	print 1,ibclr(i2_mask1,15)+i-j
	print 1,ibclr(i2_mask2,i2_p0)+i-j
	print 1,ibclr(i2_mask2,i2_p1)+i-j
	print 1,ibclr(i2_mask2,i2_p8)+i-j
	print 1,ibclr(i2_mask2,i2_p15)+i-j
	print 1,ibclr(i2_mask2,0)+i-j
	print 1,ibclr(i2_mask2,1)+i-j
	print 1,ibclr(i2_mask2,8)+i-j
	print 1,ibclr(i2_mask2,15)+i-j
	print 1,ibset(i2_mask1,i2_p0)+i-j
	print 1,ibset(i2_mask1,i2_p1)+i-j
	print 1,ibset(i2_mask1,i2_p8)+i-j
	print 1,ibset(i2_mask1,i2_p15)+i-j
	print 1,ibset(i2_mask1,0)+i-j
	print 1,ibset(i2_mask1,1)+i-j
	print 1,ibset(i2_mask1,8)+i-j
	print 1,ibset(i2_mask1,15)+i-j
	print 1,ibset(i2_mask2,i2_p0)+i-j
	print 1,ibset(i2_mask2,i2_p1)+i-j
	print 1,ibset(i2_mask2,i2_p8)+i-j
	print 1,ibset(i2_mask2,i2_p15)+i-j
	print 1,ibset(i2_mask2,0)+i-j
	print 1,ibset(i2_mask2,1)+i-j
	print 1,ibset(i2_mask2,8)+i-j
	print 1,ibset(i2_mask2,15)+i-j
1       format(1h ,z8.8)
        end
	block data
	common /com/i,j
	data i/1/
	data j/1/
	end
