      call s1
      print *,'pass'
      end
      subroutine s1
      common /x/ ip2
      integer*8 ip1, ip2
      ip1=malloc(8*2)
      call s11(ip1)
      ip2=malloc(8*2)
      end
      subroutine s11(ip1)
      pointer (ip1,i)
      complex i,ii,jj
      integer ma(10)
      i=(10,10)
      do 1 j=1,10
         i=i+(1,1)
1     continue
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         i=i+cmplx(j,j)
         if (abs(i-cmplx(ma(j),ma(j))).gt.0.001)print *,'fail'
3     continue
      end

