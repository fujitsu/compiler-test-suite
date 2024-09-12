      program main
      real r10(10),r11(10)
      logical l20(5,5)/25*.false./
      real r20(5,5),r21(5,5),r30(5,5,5),r31(5,5,5)
      real r40(5,5,5,5),r41(5,5,5,5)
      logical lm(10)
      data lm/.true.,.false.,.true.,.false.,.true.,
     1           .false.,.true.,.false.,.true.,.false./
      r11=0
      do 1 i=1,5
       do 1 j=1,5
        do 1 k=1,5
         do 1 l=1,5
           r20(j,k) = 1.0
           r10(i) = 2.0
           r10(i+5) = 3.0
           r30(i,j,k) = 3.0
           r40(i,j,k,l) = 4.0
           r41(i,j,k,l) = i + j + k + l
           r31(i,j,k) = i + j + k
           r11(i+5) = i
           r21(k,l) = i + j
  1   continue

      do 13 i=1,5
        do 12 j=1,5
          do 11 k=1,5
            do 10 l=1,5
              l20(2,3) = i.eq.j
              r10(1) = r11(i)             + i
              r20(1,1) = r21(i,j)         + j
              r30(2,2,2) = r31(i,j,k)     + k
              r40(1,2,3,4) = r41(i,j,k,l) + l
  10        continue
  11      continue
  12    continue
  13  continue
      write(6,*) ' l20(2,3) = ',l20(2,3)
      write(6,*) ' r10(1) = ',r10(1)
      write(6,*) ' r20(1,1) = ',r20(1,1)
      write(6,*) ' r30(2,2,2) = ',r30(2,2,2)
      write(6,*) ' r40(1,2,3,4) = ',r40(1,2,3,4)

      do 20 l=1,5
        do 20 j=1,5
          do 20 k=1,5
            do 20 i=1,5
              if(lm(i)) then
                l20(5,3) = .false.
                r10(1) = r11(i)             * i
                r20(1,1) = r21(i,j)         * j
                r30(3,4,5) = r31(i,j,k)     * k
                r40(1,5,5,4) = r41(i,j,k,l) * l
              endif
  20  continue
      write(6,*) ' l20(5,3) = ',l20(5,3)
      write(6,*) ' r10(1) = ',r10(1)
      write(6,*) ' r20(1,1) = ',r20(1,1)
      write(6,*) ' r30(3,4,5) = ',r30(3,4,5)
      write(6,*) ' r40(1,5,5,4) = ',r40(1,5,5,4)
      stop
      end
