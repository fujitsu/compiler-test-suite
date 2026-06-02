      dimension  a(2,2,2,2,2,2,2),b(2,2,2,2,2,2,2),c(2,2,2,2,2,2,2)
      data  a,b,c/128*1.0,128*2.0,128*3.0/
      call  sub(a,b,c,2,2,2,2,2,2,2)
      stop
      end

      subroutine  sub(a,b,c,l,m,n,o,p,q,r)
      dimension  a(l,m,n,o,p,q,r),b(l,m,n,o,p,q,r),c(l,m,n,o,p,q,r)
      integer d,e,f,g,o,p,q,r
      do 10 i=1,l
       do 10 j=1,m
        do 10 k=1,n
         do 10 g=1,o
          do 10 f=1,p
           do 10 e=1,q
            do 10 d=1,r

           a(i,j,k,g,f,e,d) = b(i,j,k,g,f,e,d) * a(i,j,k,g,f,e,d)
           c(i,j,k,g,f,e,d) = a(i,j,k,g,f,e,d) + c(i,j,k,g,f,e,d)
   10 continue

      print *,a,c
      return
      end
