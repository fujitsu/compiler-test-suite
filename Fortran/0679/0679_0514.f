      program main
      real    a(10),b(10),c(10)
      real*8  ad(10),bd(10),cd(10),dd/5/
      data    a,b,c/30*5/,ad,bd,cd/10*2,10*3,10*21/
      integer  n/10/

      do 10 i=2,n-1
        a(i)=c(i)/a(i)
        b(i+1)=sqrt(a(i))+b(i-1)
   10 continue
      write(6,*) a,b

      do 20 i=2,n-1
        ad(i+1)=dmod(ad(i-1),bd(i))
        bd(i)=cd(i)+i
   20 continue
      write(6,*) ad

      do 30 i=2,n-1
        ad(i+1)=dmod(ad(i-1),dd)
        bd(i)=cd(i)+i
   30 continue
      write(6,*) ad

      do 40 i=2,n-1
        ad(i+1)= mod(ad(i-1),8)
        bd(i)=dd+i
   40 continue
      write(6,*) ad
      end
