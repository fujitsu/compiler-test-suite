      program main
      integer*4 a(1000),b(1000),c(1000),d(10)
      do 5 j=1,10
        d(j)=1
    5 continue
      n=1000
      do 10 j=1,n
        a(j)=0
        b(j)=0
        c(j)=j
   10 continue
      call subce1(a,b,c)
      do 20 k=1,1000
        if((a(k)+b(k)).ne.c(k)) go to 30
   20 continue
      isuma=0
      isumb=0
      isumc=0
      do 25 i=1,1000
        isuma=isuma+a(i)
        isumb=isumb+b(i)
        isumc=isumc+c(i)
   25 continue
      write(6,*) '*** ok ***'
      write(6,*) isuma
      write(6,*) isumb
      write(6,*) isumc
      go to 40
   30 continue
      isuma=0
      isumb=0
      isumc=0
      do 35 i=1,k
        isuma=isuma+a(i)
        isumb=isumb+b(i)
        isumc=isumc+c(i)
   35 continue
      write(6,*) '*** ng ***'
      write(6,*) k
      write(6,*) isuma
      write(6,*) isumb
      write(6,*) isumc
   40 continue
      end
      subroutine subce1(a,b,c)
      integer*4 a(10,10,10),b(10,10,10),c(1000)
      l=0
      n=10
      do 10 k=1,n
        do 20 j=1,n
          do 30 i=1,n
            l=l+1
            if(mod(i,2).eq.1) then
              a(i,j,k)=c(l)
            else
              b(i,j,k)=c(l)
            end if
   30     continue
   20   continue
   10 continue
      return
      end
