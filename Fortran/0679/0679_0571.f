      program main
      real r10(10),r11(10),r12(10)
      real r20(10,10),r21(10,10),r22(10,10)
      real r30(10,10,10),r31(10,10,10),r32(10,10,10)
      data r10/10*1./,r11/10*2./,r12/10*3./
      data r20/100*1./,r21/100*2./,r22/100*3./
      data r30/1000*1./,r31/1000*2./,r32/1000*3./
      data s/0/,s1/1/,s2/2/,s3/3/
      do 10 i=1,10
        r10(i) = r11(i)*r12(i)
        do 20 j=1,10
          r20(i,j) = r21(i,j)*r22(i,j)*s1
          do 30 k=1,10
            r30(i,j,k) = r31(i,j,k)*s2 + r32(i,j,k)+s3
  30      continue
  20    continue
        r11(i) = r11(i)/r12(i)
  10   continue
      write(6,*) r10
      write(6,*) (r20(1,l),l=1,10)
      write(6,*) (r30(1,1,l),l=1,10)
      do 40 i=1,10
        r10(i) = r11(i)*r12(i)
        do 50 j=2,10
          r20(i,j) = r20(i,j-1)*s1
          s = 0
          do 60 k=1,10
            s = s + r10(1)
  60      continue
  50    continue
        r11(i) = r11(i)/r12(i)
  40   continue
      write(6,*) r10
      write(6,*) (r20(1,l),l=1,10)
      write(6,*) (r30(1,1,l),l=1,10)
      stop
      end
