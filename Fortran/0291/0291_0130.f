	real*16 :: r161  = 1
	real*16 :: r162  = 2
	print *,merge("OK1","NG1",max(r161,r162)  == 2)
	print *,merge("OK2","NG2",max(r161+2,r162)  == 3)
	print *,merge("OK3","NG3",max(r161,r162-2) == 1)
	print *,merge("OK4","NG4",min(r161,r162) == 1)
	print *,merge("OK5","NG5",min(r161+2,r162) == 2)
	print *,merge("OK6","NG6",min(r161,r162-2) == 0)
	end
