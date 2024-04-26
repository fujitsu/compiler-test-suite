
      program main
      integer, parameter :: N = 10
      integer, parameter :: M = 3
      integer, parameter :: ANS = 4
      integer  ia1(N)
      integer  ia2(N,N)
      integer  ia7(M,M,M,M,M,M,M)
      integer  d1,d2,d3
      integer  res

      call init_var()
      d1 = 1
      d2 = 2
      d3 = 3

      ia1(1) = ia1(1) + 0
      ia1(1) = ia1(1) - 0
      ia1(1) = ia1(1) + 1
      ia1(1) = ia1(1) - 1
      ia2(1,1) = ia2(1,1) + 0
      ia2(1,1) = ia2(1,1) - 0
      ia2(1,1) = ia2(1,1) + 1
      ia2(1,1) = ia2(1,1) - 1
      ia7(1,1,1,1,1,1,1) = ia7(1,1,1,1,1,1,1) + 0
      ia7(1,1,1,1,1,1,1) = ia7(1,1,1,1,1,1,1) - 0
      ia7(1,1,1,1,1,1,1) = ia7(1,1,1,1,1,1,1) + 1
      ia7(1,1,1,1,1,1,1) = ia7(1,1,1,1,1,1,1) - 1
      ia1(d1) = ia1(d1) + 0
      ia1(d1) = ia1(d1) - 0
      ia1(d1) = ia1(d1) + 1
      ia1(d1) = ia1(d1) - 1
      ia2(d1,d2) = ia2(d1,d2) + 0
      ia2(d1,d2) = ia2(d1,d2) - 0
      ia2(d1,d2) = ia2(d1,d2) + 1
      ia2(d1,d2) = ia2(d1,d2) - 1
      ia7(d1,d2,d3,d1,d2,d3,d1) = ia7(d1,d2,d3,d1,d2,d3,d1) + 0
      ia7(d1,d2,d3,d1,d2,d3,d1) = ia7(d1,d2,d3,d1,d2,d3,d1) - 0
      ia7(d1,d2,d3,d1,d2,d3,d1) = ia7(d1,d2,d3,d1,d2,d3,d1) + 1
      ia7(d1,d2,d3,d1,d2,d3,d1) = ia7(d1,d2,d3,d1,d2,d3,d1) - 1

      do i1=1,N
         ia1(1) = ia1(1) + 0
         ia1(1) = ia1(1) - 0
         ia1(1) = ia1(1) + 1
         ia1(1) = ia1(1) - 1
         ia1(i1) = ia1(i1) + 0
         ia1(i1) = ia1(i1) - 0
         ia1(i1) = ia1(i1) + 1
         ia1(i1) = ia1(i1) - 1
         ia1(i1*d1) = ia1(i1*d1) + 0
         ia1(i1*d1) = ia1(i1*d1) + 1
         do i2=1,N
            ia2(1,1) = ia2(1,1) + 0
            ia2(1,1) = ia2(1,1) - 0
            ia2(1,1) = ia2(1,1) + 1
            ia2(1,1) = ia2(1,1) - 1
            ia2(i1,i2) = ia2(i1,i2) + 0
            ia2(i1,i2) = ia2(i1,i2) - 0
            ia2(i1,i2) = ia2(i1,i2) + 1
            ia2(i1,i2) = ia2(i1,i2) - 1
            ia2(i1*d1,i2*d1) = ia2(i1*d1,i2*d1) + 0
            ia2(i1*d1,i2*d1) = ia2(i1*d1,i2*d1) + 1
         enddo
      enddo

      res = maxval(ia1) + maxval(ia2) + maxval(ia7)

      do i1=1,M
         do i2=1,M
            do i3=1,M
               do i4=1,M
                  do i5=1,M
                     do i6=1,M
                        do i7=1,M
                           ia7(1,1,1,1,1,1,1) =
     &                          ia7(1,1,1,1,1,1,1) + 0
                           ia7(1,1,1,1,1,1,1) =
     &                          ia7(1,1,1,1,1,1,1) - 0
                           ia7(1,1,1,1,1,1,1) =
     &                          ia7(1,1,1,1,1,1,1) + 1
                           ia7(1,1,1,1,1,1,1) =
     &                          ia7(1,1,1,1,1,1,1) - 1
                           ia7(i1,i2,i3,i4,i5,i6,i7) = 
     &                          ia7(i1,i2,i3,i4,i5,i6,i7) + 0
                           ia7(i1,i2,i3,i4,i5,i6,i7) = 
     &                          ia7(i1,i2,i3,i4,i5,i6,i7) - 0
                           ia7(i1,i2,i3,i4,i5,i6,i7) = 
     &                          ia7(i1,i2,i3,i4,i5,i6,i7) + 1
                           ia7(i1,i2,i3,i4,i5,i6,i7) = 
     &                          ia7(i1,i2,i3,i4,i5,i6,i7) - 1
                           ia7(i7,i2*d1,i3,i4*d1,i5,i6*d1,i1) = 
     &                          ia7(i7,i2*d1,i3,i4*d1,i5,i6*d1,i1) + 0
                           ia7(i7*d1,i2,i4,i3,i5,i1*d1,i6) = 
     &                          ia7(i7*d1,i2,i4,i3,i5,i1*d1,i6) - 0
                        enddo
                     enddo
                  enddo
               enddo
            enddo
         enddo
      enddo


      res = res + maxval(ia1) + maxval(ia2) + maxval(ia7)

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      contains

      subroutine init_var()
      ia1 = 0
      ia2 = 0
      ia7 = 0 
      end subroutine

      end
