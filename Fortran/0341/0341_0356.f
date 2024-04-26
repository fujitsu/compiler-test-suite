        real*8 a(500,500)
	a=1
        do 10 i=1,394
          do 20 j=1,394
              a(1+1+1+1+1+i,j) =a(1+i,j+1)
 20       continue
 10     continue
	do 30 i=1,5
	  do 30 j=1,5
	    print *,a(i*5,j*5)
30     continue
        end
