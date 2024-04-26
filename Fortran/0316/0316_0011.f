       real*4    source(10)
       type mtag
         real*4     r(4)
         complex*8  c(3)
       end type
       type  (mtag) ::mold
       type  (mtag) ::re
       parameter (source=(/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/))
       parameter (mold=mtag(1.0,(2.0,3.0)))
       parameter (re=transfer(source,mold))
       print *,source
       print *,mold
       print *,re%r
       print *,re%c
       end
