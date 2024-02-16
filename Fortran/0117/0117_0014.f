        real*8 a(400,400)
	a=2
        do 10 i=1,395
          do 20 j=1,395
              a(1:5+i,j) =a(1+i,j+1)
 20       continue
 10     continue
        do 30 i=1,399
          do 30 j=1,399
              a(i,1:1+j) =a(1+i,j+1)
 30       continue
        do 40 i=1,399
          do 40 j=1,399
              a(i,1+j) =a(j,j+1)
 40       continue
        do 50 i=1,399
          do 50 j=1,399
              a(i,1+j) =a(1+i,j+1)
 50       continue
        do 60 i=1,399
          do 60 j=1,399
              a(1:1,1:1) =a(1+i,j+1)
 60       continue
	do 70 i=1,5
	  do 70 j=1,5
	    print *,a(i*5,j*5)
70     continue
        end
