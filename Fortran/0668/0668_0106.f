      parameter (n=20)
      parameter (nx=n-1,nxy=(n-1)**2,np1=n+1)
      common /blk/ a(nxy,np1),b(nxy,np1),c(nxy,np1),d(nxy,np1),
     &             e(nxy,np1),f(nxy,np1),g(nxy,np1),s(nxy,np1),
     &             x(nxy+2*nx,np1),omega,s1omg
      call init
      do 10 k=2,n,2
      do 10 i=2,nxy,2
        ist=i+nx
        xt =( s(i,k)-a(i,k)*x(ist   ,k-1)
     &              -b(i,k)*x(ist-nx,k  )
     &              -c(i,k)*x(ist-1 ,k  )
     &              -e(i,k)*x(ist+1 ,k  )
     &              -f(i,k)*x(ist+nx,k  )
     &              -g(i,k)*x(ist   ,k+1) )/d(i,k)
        x(ist,k)=s1omg*x(ist,k)+omega*xt
  10  continue
      write(6,100) ((x(i+nx,j),i=2,nxy,2),j=2,n,2)
  100 format(' ',(6g12.5))
      stop
      end
      subroutine init
      parameter (n=20)
      parameter (nx=n-1,nxy=(n-1)**2,np1=n+1)
      common /blk/ a(nxy,np1),b(nxy,np1),c(nxy,np1),d(nxy,np1),
     &             e(nxy,np1),f(nxy,np1),g(nxy,np1),s(nxy,np1),
     &             x(nxy+2*nx,np1),omega,s1omg
      do 10 j=1,np1
       do 20 i=1,nxy
         a(i,j)=1.
         b(i,j)=2.
         c(i,j)=2.
         d(i,j)=4.
         e(i,j)=-3.
         f(i,j)=6.
         g(i,j)=5.
         s(i,j)=2.
         x(i,j)=-1.
  20   continue
       do 30 i=nxy+1,nxy+2*nx
         x(i,j)=-2.
  30   continue
  10  continue
      omega=5.
      s1omg=2.
      return
      end
