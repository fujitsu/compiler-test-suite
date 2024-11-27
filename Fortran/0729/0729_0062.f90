      subroutine fft(n,cx,ind)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      complex*16 cx(n)
      j=1
      do 140 i=1,n
         if (i.ge.j) go to 110
         ctemp=cx(j)
         cx(j)=cx(i)
         cx(i)=ctemp
  110    m=n/2
  120    if (j.le.m) go to 130
         j=j-m
         m=m/2
         if (m.ge.2) go to 120
  130    j=j+m
  140 continue
      kmax=1
  150 if (kmax.ge.n) return
      istep=kmax*2
      do 170 k=1,kmax
         ctheta=cmplx(0.0d0 &
     &        ,3.14159265358979323d0*real(ind*(k-1))/real(kmax))
         do 160 i=k,n,istep
            j=i+kmax
            ctemp=cx(j)*exp(ctheta)
            cx(j)=cx(i)-ctemp
            cx(i)=cx(i)+ctemp
  160    continue
  170 continue
      kmax=istep
      go to 150
      end
      print *,'pass'
      end
