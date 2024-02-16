        real*8 a(400,400)
	a=1
        do 10 i=1,200
          do 20 j=1,200
              a(5+i,j) =a(1+i,j+1)
 20       continue
 10     continue
	do 30 i=1,5
	  do 30 j=1,5
	    print *,a(i*5,j*5)
30     continue
        end
