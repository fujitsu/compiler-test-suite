      program main
      integer*4  upper,lower,i,j
      real*4     er4
      real*8     er8
      dimension  er4(200,10),er8(200,10)
      common     /val/ansr4,ansr8
      real*4     ansr4
      real*8     ansr8
      dimension  ansr4(2000),ansr8(2000)
      equivalence ( ansr4(1), er4(1,1) ), ( ansr8(1), er8(1,1) )
      lower = 40
      upper = 50
      call setval(er4,er8,lower,upper)
      lower = 200
      upper = 10
      call calval(er4,er8,lower,upper)
      lower = 200
      upper = 10
      call sub(er4,er8,lower,upper)
      do j=1,10
          do i=1,200
              if( er4(i,j) .ne. real(i) ) then
                  write(6,100) i,j,er4(i,j)
              endif
              if( er8(i,j) .ne. dfloat(i) ) then
                  write(6,110) i,j,er8(i,j)
              endif
          end do
      end do
      write(6,200)
      stop
  100 format(1h ,'***** ng er4 ***** i=',i6,' j=',i6,' var=',e18.7)
  110 format(1h ,'***** ng er8 ***** i=',i6,' j=',i6,' var=',d18.7)
  200 format(1h ,'>>>>> ok <<<<<')
      end program main
      subroutine setval( calr4,calr8,lower,upper )
      integer*4 lower,upper,i,j
      real*4    calr4,pair4
      real*8    calr8,pair8
      dimension calr4(lower,upper),
     1          calr8(lower,upper)
      data      pair4 / 0.31415926536e1 /
      data      pair8 / 0.31415926536d1 /
      do j = 1, upper
          do i = 1, lower
              calr4(i,j) = pair4 / ( 0.13e1 + real(j) )
              calr8(i,j) = pair8 / ( 0.13d1 + dfloat(j) )
          end do
      end do
      return
      end subroutine
      subroutine calval(calr4,calr8,lower,upper)
      integer*4 lower,upper,i,j
      real*4    calr4
      real*8    calr8
      dimension calr4(lower,upper),
     1          calr8(lower,upper)
      do j=1,10
          do i=1,200
              calr4(i,j) = real(i)   +  sin( calr4(i,j) )
              calr8(i,j) = dfloat(i) + dsin( calr8(i,j) )
          end do
      end do
      return
      end subroutine
      subroutine sub( trcr4,trcr8,lower,upper )
      integer*4 lower,upper,i,j
      real*4    trcr4
      real*8    trcr8
      dimension trcr4(lower,upper),
     1          trcr8(lower,upper)
      j = 0
      do i = 1,lower
          trcr4(i,j + 1) = aint( trcr4(i,j + 1) )
          trcr4(i,j + 2) = aint( trcr4(i,j + 2) )
          trcr4(i,j + 3) = aint( trcr4(i,j + 3) )
          trcr4(i,j + 4) = aint( trcr4(i,j + 4) )
          trcr4(i,j + 5) = aint( trcr4(i,j + 5) )
          trcr4(i,j + 6) = aint( trcr4(i,j + 6) )
          trcr4(i,j + 7) = aint( trcr4(i,j + 7) )
          trcr4(i,j + 8) = aint( trcr4(i,j + 8) )
          trcr4(i,j + 9) = aint( trcr4(i,j + 9) )
          trcr4(i,j +10) = aint( trcr4(i,j +10) )
          trcr8(i,j + 1) = dint( trcr8(i,j + 1) )
          trcr8(i,j + 2) = dint( trcr8(i,j + 2) )
          trcr8(i,j + 3) = dint( trcr8(i,j + 3) )
          trcr8(i,j + 4) = dint( trcr8(i,j + 4) )
          trcr8(i,j + 5) = dint( trcr8(i,j + 5) )
          trcr8(i,j + 6) = dint( trcr8(i,j + 6) )
          trcr8(i,j + 7) = dint( trcr8(i,j + 7) )
          trcr8(i,j + 8) = dint( trcr8(i,j + 8) )
          trcr8(i,j + 9) = dint( trcr8(i,j + 9) )
          trcr8(i,j +10) = dint( trcr8(i,j +10) )
      end do
      return
      end subroutine
