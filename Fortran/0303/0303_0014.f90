      program main
      call sub(0)
      end
      
      subroutine sub(loff)
      integer i, ii, jj, ll, kl1
      kl1 = loff+2
      do 10 i = 4, 4
         ii = max0(i, 1)
         jj = min0(i, 1)
         ll = kl1
         if (ii.lt.4 .or. ii.eq.4) then
            jj = kl1
            ll = min0(i, 1)
         endif
         write(6,*) jj,ll,ii
 10   continue
      end
