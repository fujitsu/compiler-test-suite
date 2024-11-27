      real*4  a(5,5,5,5,5),b(5,5,5),c(5,5,5)
      data  a/3125*0./
      data  b/125*2./
      data  c/125*3./

      do 10 k=1,5
        do 20 j=1,3
          do 30 i=1,5
            do 40 jj=1,3
              do 50 ii=1,4
                a(ii,jj,i,j,k)=b(i,j,k)+c(i,j,k)+ii+jj
 50           continue
 40         continue
 30       continue
 20     continue
 10   continue
      write(6,*) a(1,1,1,1,2),a(2,2,2,2,3),a(5,3,5,3,4)
      stop
      end
