      subroutine aloop(a,b,c,n,i,ient)
      real*8  a(n),b(n),c,p
      p=2.0d0
      if (n < 0) then 
        c=c-p
        goto 12
      endif
 10   c=p+c
 12   if (i.ge.n) goto 11
      entry bloop(a,b,c,n,i,ient)
      if (ient.eq.0) p=1.0d0
      a(i) = a(i) + c* b(i)
      i=i+1
      goto 10
 11   end
      subroutine cloop(a,b,c,n,i,ient)
      real*8  a(n),b(n),c,p
      p=2.0d0
      if (n < 0) then 
        c=c-p
        goto 12
      endif
      entry dloop(a,b,c,n,i,ient)
      p=1.0d0
 10   c=p+c
 12   if (i.ge.n) goto 11
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
      i = 1
      call aloop(a,b,c,n,i,1)
      do 1 i=1,n,5
 1       print *,a(i:i+4:1)
      print *,' '
      a = 0.0d0
      b = 1.0d0
      c = 1.0d0
      i = 10
      call bloop(a,b,c,n-2,i,0)
      do 2 i=1,n,5
 2       print *,a(i:i+4:1)
      print *,' '
      a = 0.0d0
      b = 1.0d0
      c = 1.0d0
      i = 1
      call cloop(a,b,c,n,i,1)
      do 3 i=1,n,5
 3       print *,a(i:i+4:1)
      print *,' '
      a = 0.0d0
      b = 1.0d0
      c = 1.0d0
      i = 10
      call dloop(a,b,c,n-2,i,1)
      do 4 i=1,n,5
 4       print *,a(i:i+4:1)
      end

      
      

      
