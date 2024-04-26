       complex*8 source(5)
       real*4    mold
       real*4    re(9)
       parameter (source=(/(1.0,1.0),(2.0,2.0),(3.0,3.0),
     +                    (4.0,4.0),(5.0,5.0)/))
       parameter (mold=0.0)
       parameter (re=transfer(source,mold,9))
       print *,source
       print *,mold
       print *,re
       end
