	integer*1 a(20000)
        DATA (A(I),I=1,20000,2) /10000*1/
	print *,a(1),a(20000-1),a(20000)
	end
