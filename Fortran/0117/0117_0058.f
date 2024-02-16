      integer a(100,100) 
      matdim = 100
      a = 1
      DO 8 I = 1, MATDIM
	a(I,I) = i
       DO 8 J = 1, MATDIM
          a(J,I) =  a(I,I)
          DO 8 K = 1, MATDIM
            a(J,K) =  a(J,I) + a(I,K)
8     CONTINUE
      if(a(1,1).ne.14951) then
	print *,a(1,1)
	print *,"***** NG1 *****"
      endif
      if(a(10,10).ne.14825) then
	print *,a(10,10)
	print *,"***** NG2 *****"
      endif
      if(a(20,30).ne.13675) then
	print *,a(20,30)
	print *,"***** NG3 *****"
      endif
      if(a(30,20).ne.14400) then
	print *,a(30,20)
	print *,"***** NG4 *****"
      endif
      if(a(1,100).ne.200) then
	print *,a(1,100)
	print *,"***** NG5 *****"
      endif
      if(a(100,1).ne.14951) then
	print *,a(100,1)
	print *,"***** NG6 *****"
      endif
      if(a(99,98).ne.789) then
	print *,a(99,98)
	print *,"***** NG7 *****"
      endif
      if(a(100,100).ne.200) then
	print *,a(100,100)
	print *,"***** NG8 *****"
      endif
      print *,"***** OK *****"
      END
