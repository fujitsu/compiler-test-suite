     complex*8  p8,  p8dim(10)

     p8dim(1) = (1.0,1.0)
     do 8 i=1,9
        p8dim(i+1) = p8dim(i) + (1.0,1.0)
8    continue
     print *,p8dim
     end

