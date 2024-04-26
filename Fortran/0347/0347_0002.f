      dimension a(4),b(4),c(4),e(4)
      data a/3.,2.,1.,1./
      do 10 i=1,4
       c(i)=a(i)
  10   e(i)=0
      write(6,*) ' original'
      write(6,600) a
      call sweep(a,b,2)
      write(6,*) ' result a'
      write(6,600) a
      write(6,*) ' result b'
      write(6,600) b
      call mult(e,c,b,2)
      write(6,*) ' unit'
      write(6,600) e
 600  format(10(' ',f7.1))
      stop
      end
      subroutine sweep (a,b,n)
      dimension a(n,n),b(n,n)
      do 100 i=1,n
       do 110 j=1,n
        b(i,j)=0.0
 110   continue
       b(i,i)=1.0
 100  continue
      do 30 k=1,n
       w=a(k,k)
       do 10 i=1,n
         a(i,k)=a(i,k)/w
         b(i,k)=b(i,k)/w
  10   continue
       do 20 j=1,n
        if (j.ne.k) then
          s=a(k,j)
          do 21 i=1,n
           a(i,j)=a(i,j)-s*a(i,k)
  21       b(i,j)=b(i,j)-s*b(i,k)
        end if
  20   continue

  30  continue
      return
      end
      subroutine mult(e,c,b,n)
      dimension  e(n,n),c(n,n),b(n,n)
      do 10 i=1,n
       do 10 j=1,n
        e(i,j)=0.0
        do 10 k=1,n
         e(i,j)=c(i,k)*b(k,j)+e(i,j)
  10     continue
      return
      end
