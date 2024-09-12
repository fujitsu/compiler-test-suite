      program main
      parameter(n=10,nn=10)
      real*4 ra1(10),ra2(10,10),sum1,sum2
      real*8 da7(5,5,5,5,5,5,10),sum3
      integer o,p
      data da7/156250*1./
      interface
         subroutine sub01(ra0,rb0)
         real(4),target :: ra0,rb0
         end subroutine sub01

         subroutine sub02(ra0,rb0)
         real(4),target :: ra0,rb0
         end subroutine sub02

         subroutine sub03(da7,db7)
         real(8),target :: da7(:,:,:,:,:,:,:)
         real(8),target :: db7(:,:,:,:,:,:,:)
         end subroutine sub03
      endinterface
      call init(ra1,ra2)
      sum1 = 0.0
      sum2 = 0.0
      sum3 = 0.0
      do 10 i=1,n
         ra1(i) = ra1(i) * sin(float(i))
         call sub01(ra1(i),ra1(i))
         if(ra1(i).gt.0) then
            do 20 j=1,n
               ra2(i,j) = ra2(i,j) * sin(float(j))
               call sub02(ra2(i,j),ra2(i,j))
               sum1 = sum1 + ra2(i,j)
   20       continue
            do 30 j=1,n
               ra2(i,j) = ra2(i,j) * sin(float(j))
               call sub02(ra2(i,j),ra2(i,j))
               sum1 = sum1 + ra2(i,j)
   30       continue
         endif
         sum2 = sum2 + ra1(i)
   10 continue
      write(6,*) 'sum1 => '
      write(6,90) sum1 
      write(6,*) 'sum2 => '
      write(6,90) sum2
      do 40 i=1,nn-5
      do 40 j=1,nn-5
      do 40 k=1,nn-5
      do 40 l=1,nn-5
      do 40 m=1,nn-5
      do 40 o=1,nn-5
      do 40 p=1,nn,2
         da7(i,j,k,l,m,o,p) = sin(float(o))
         da7(i,j,k,l,m,o,p) = da7(i,j,k,l,m,o,p) + o
         call sub03(da7(i:,j:,k:,l:,m:,o:,p:),da7(i:,j:,k:,l:,m:,o:,p:))
         sum3 = sum3 + da7(i,j,k,l,m,o,p)
   40 continue
      write(6,*) 'sum3 => '
      write(6,90) sum3
90    format(f10.2)
      stop
      end
      subroutine init(ra1,ra2)
      real*4 ra1(10),ra2(10,10)
      do 10 i=1,10
         ra1(i) = sin(float(i))
         do 10 j=1,10
            ra2(i,j) = cos(ra1(i))
   10 continue
      return
      end
      subroutine sub01(ra0,rb0)
      real*4 ,target :: ra0,rb0
      real*4 ra1(10)
      n = 0
      sum = 0.0
      do 10 i=1,10
         ra1(i) = ra0
         ra1(i) = ra1(i) + rb0
         n = n + 1
         ra1(i) = ra1(i) + n
         sum = sum + ra1(i)
   10 continue
      ra0 = sum
      return
      end
      subroutine sub02(ra0,rb0)
      real*4 ,target :: ra0,rb0
      real*4 ra1(10)
      sum = 0.0
      do 10 i=1,10
         ra1(i) = ra0
         ra1(i) = ra1(i) * rb0
         sum = sum + ra1(i)
   10 continue
      ra0 = sum
      return
      end
      subroutine sub03(da7,db7)
      real(8),target :: da7(:,:,:,:,:,:,:)
      real(8),target :: db7(:,:,:,:,:,:,:)
      real(8) da1(10)
      dsum = 0.0
      do 10 i=1,10
         da1(i) = da7(1,1,1,1,1,1,1)
         da1(i) = da1(i) * db7(1,1,1,1,1,1,2)
         dsum = dsum + da1(i)
   10 continue
      da7(1,1,1,1,1,1,1) = dsum
      return
      end
