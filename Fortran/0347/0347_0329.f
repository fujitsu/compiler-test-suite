      dimension  a(100,100),b(100)
      data b/100*1./
      data nn/100/
      do 10 j=1,100
       do 10 i=1,100
         a(i,j)=float(100-j+1)
 10   continue
      call sub(a,b,nn)
      write(6,*) ' b=',b
      do 20 j=1,100
       do 20 i=1,100
         a(i,j)=float(i-j+1)
 20   continue
      call sub(a,b,nn)
      write(6,*) ' b= ',b
      stop
      end
      subroutine sub(a,b,nn)
      dimension  a(nn,nn),b(nn),jpiv(100),pivi(100)
      n=nn
      do 100 k=1,n
      jjpiv=0
      ipiv=0
      do 10 i=k,n
      rmax=0.0d-40
      s=0.0d-40
      do 1 j=k,n
      w=abs(a(i,j))
      if(rmax.ge.w) go to 1
      rmax=w
      jpiv(i)=j
    1 s=s+w*w
      s= sqrt(s)
      if(rmax.eq.0.) go to 1000
   10 pivi(i)=rmax/s
      b(k)=s
 100  continue
      write(6,*) ' jpiv= ',jpiv
      write(6,*) ' pivi= ',pivi
1000  continue
      return
      end
