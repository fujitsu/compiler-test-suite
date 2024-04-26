	common/com/r1,r2,r3,r4,r5
	r1 = r1 + 1
	r1 = r1 + 1
	r1 = r1 + 1
	r1 = r1 + 1

	r2 = r2 + 1
	r2 = r2 + 1
	r2 = r2 + 1

	r3 = r3 + 1
	r3 = r3 + 1

	r4 = r4 + 1

	print *,r1+1,r2+1,r3+1,r4+1,r5+1
	end
	block data
	common/com/r1,r2,r3,r4,r5
	data r1/1.0/
	data r2/2.0/
	data r3/3.0/
	data r4/4.0/
	data r5/5.0/
	end

