      call s1
      print *,'pass'
      end
      subroutine s1
      integer*8 ip1,malloc
      ip1=malloc(4*10_8)
      call s11(ip1,-10,-1,1,1)
      end
      subroutine s11(ip1,ma,m1,j1,k1)
      pointer (ip1,a)
      integer*8 ips
      dimension    a(j1:k1,ma:m1)
      l=ma
      do 1 j=1,m1-ma+1
         a(k1,l)=j
         l=l+1
1     continue
      ips=ip1
      call s111(ip1,-20,-11,-1,-1,2,2)
      call s112(ip1,-20,-11,-1,-1,2,2)
      call s211(ips,-20,-11,-1,-1,2,2)
      call s212(ips,-20,-11,-1,-1,2,2)
      end
      subroutine s111(ip1,ma,m1,j1,k1,j2,k2)
      pointer (ip1,a)
      dimension    a(j2:k2,j1:k1,ma:m1)
      l=ma
      do 2 j=1,m1-ma+1
         if (abs(a(j2,j1,l)-j).gt.0.001)print *,'fail'
          l=l+1
2     continue
      end
      subroutine s112(ip1,ma,m1,j1,k1,j2,k2)
      pointer (ip1,a)
      dimension    a(j2:k2,j1:k1,ma:m1)
      do 2 j=1,m1-ma+1
         if (abs(a(k2,k1,ma)-j).gt.0.001)print *,'fail'
         ip1=ip1+4
2     continue
      end
      subroutine s211(ip1,ma,m1,j1,k1,j2,k2)
      pointer (ip1,a)
      complex      a(j2:k2,j1:k1,ma+5:m1)
      l=ma+5
      do 2 j=1,m1-ma  +1,2
         if (abs(real(a(j2,j1,l))-j).gt.0.001)print *,'fail'
         if (abs(imag(a(j2,j1,l))-j-1).gt.0.001)print *,'fail'
         l=l+1
2     continue
      end
      subroutine s212(ip1,ma,m1,j1,k1,j2,k2)
      pointer (ip1,a)
      dimension    a(j2:k2,j1:k1,ma+5:m1)
      complex a
      do 2 j=1,m1-ma  +1,2
         if (abs(real(a(j2,j1,ma+5))-j).gt.0.001)print *,'fail'
         if (abs(imag(a(j2,j1,ma+5))-j-1).gt.0.001)print *,'fail'
         ip1=ip1+8
2     continue
      end
