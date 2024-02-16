      integer a(120,120)
      x = 1
      do 10 i=1,100
         do 20 j=1,100
            a(i+1,j) = x
            x = x + 1
 20      continue
 10   continue
      if(a(2,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(a(2,100).ne.100) then
	print *,"***** NG2 *****"
      endif
      if(a(10,1).ne.801) then
	print *,"***** NG3 *****"
      endif
      if(a(10,100).ne.900) then
	print *,"***** NG4 *****"
      endif
      print *,"***** OK *****"
      end
