	implicit integer(b-z)
        real*8 a(400,400)
        a=1
        do 10 i=1,395
          do 20 j=1,395
              a(1:5+i,j) =a(1+i,j+1)
 20       continue
 10     continue
        do 30 k=1,4
        do 30 i=1,40
          do 30 j=1,40
              a(i,1:1+j) =a(1+i,j+1)
 30       continue
        do 40 k=1,4
              a(i,1:1+j) =a(1+i,j+1)
        do 40 i=1,40
          do 40 j=1,40
              a(i,j) =1
 40       continue
        do 50 k=1,2
              a(i,1:1+j) =a(1+i,j+1)
        do 50 i=1,3
          do 50 j=1,3
              a(i,j) =1
        do 50 l=1,5
          do 50 m=1,4
              a(i,j) =1
        do 50 o=1,3
          do 50 p=1,2
              a(i,j) =1
        do 50 q=1,10
          do 50 r=1,10
              a(i,j) =1
	      a(i,1:1) = a(1,1)
 50       continue
       print *,a(1,1)
       print *,a(10,10)
        end
