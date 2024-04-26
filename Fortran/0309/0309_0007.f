      subroutine aloop(a,b,c,n,i,ient)
      real*8  a(n),b(n),c,p
      p=2.0d0
 10   c=p+c
      if (i.ge.n) goto 11
      entry bloop(a,b,c,n,i,ient)
      if (ient.eq.0) p=1.0d0
      a(i) = a(i) + c* b(i)
      i=i+1
      goto 10
 11   end
      parameter (n=20)
      real*8  a(n),b(n),c
      a = 0.0d0
      b = 1.0d0
      c = 1.0d0
      call aloop(a,b,c,n,1,1)
      do 1 i=1,n,5
 1       print *,a(i:i+4:1)
      print *,' '
      a = 0.0d0
      b = 1.0d0
      c = 1.0d0
      call bloop(a,b,c,n-2,10,0)
      do 2 i=1,n,5
 2       print *,a(i:i+4:1)
      end

      
      

      
