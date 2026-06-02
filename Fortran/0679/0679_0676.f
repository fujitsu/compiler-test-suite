      dimension  a(2,2,2,2,2,2,2),b(2,2,2,2,2,2,2),c(2,2,2,2,2,2,2)
      data  a,b,c/128*1.0,128*2.0,128*3.0/
      call  sub(a,b,c,2,2,2,2,2,2,2)
      stop
      end

      subroutine  sub(a,b,c,l,m,n,o,p,q,r)
      dimension  a(r,q,p,o,n,m,l),b(r,q,p,o,n,m,l),c(r,q,p,o,n,m,l)
      integer d,e,f,g,o,p,q,r
      integer oo,pp,qq,rr
      ll = 1
      mm = 1
      nn = 1
      oo = 1
      pp = 1
      qq = 1
      rr = 1
      do 10 i=1,ll
       do 10 j=1,mm
        do 10 k=1,nn
         do 10 g=1,oo
          do 10 f=1,pp
           do 10 e=1,qq
            do 10 d=1,rr

           a(d,e,f,g,k,j,i) = b(d,e,f,g,k,j,i) * a(d,e,f,g,k,j,i)
           c(d,e,f,g,k,j,i) = a(d,e,f,g,k,j,i) + c(d,e,f,g,k,j,i)
   10 continue

      print *,a,c
      return
      end
