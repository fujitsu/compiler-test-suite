      integer a(10,10,10,10)
      a=0
      do 10 i=1,10
         if(i.eq.1) go to 30
         do 20 j=1,10
            do 40 k=1,10
              do 50 l=1,10
               a(i,j,k,l) = i
 50         continue
 40         continue
 20      continue
 30      continue
 10   continue
      if(a(1,1,1,1).ne.0)  then
	print *,"***** NG *****"
      endif
      if(a(1,1,1,10).ne.0)  then
	print *,"***** NG *****"
      endif
      if(a(1,10,10,1).ne.0)  then
	print *,"***** NG *****"
      endif
      if(a(10,1,1,1).ne.10)  then
	print *,"***** NG *****"
      endif
      if(a(1,1,10,10).ne.0)  then
	print *,"***** NG *****"
      endif
      if(a(1,10,10,1).ne.0)  then
	print *,"***** NG *****"
      endif
      if(a(10,1,1,1).ne.10)  then
	print *,"***** NG *****"
      endif
      if(a(10,10,10,10).ne.10)  then
	print *,"***** NG *****"
      endif
      if(a(1,2,3,4).ne. 0)  then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      end
