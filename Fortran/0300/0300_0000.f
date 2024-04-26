       integer*4  il(10)
       real*8  c001x(10),c001y(10)
       data       il/5,3,10,1,2,9,7,4,8,6/
       data       c001x/10*0./,c001y/10*1./
       do 10 i=1,10
         c001x(il(i))=c001y(i)**i
 10       continue
       write(6,100) c001x
 100      format(4f16.9)
       end
