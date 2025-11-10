      program main
      integer*4     iv21 (10),iv22 (10),iv23 (10)
      real   *4     rv21 (10),rv22 (10),rv23 (10), rs21 ,rs22 ,rs23
      real   *8                                          ds22
      complex*8                                    cs21
      logical*4     lv21 (10),                     ls21 ,ls22
      data   rs21,rs22
     1     /  2.,  3. /
      data   ls21
     1     / .true./
      data   cs21
     1     / (1.0,1.0)/
      iv22 = 0
      iv23 = 0
      rv23 = 0
      rs23 = 2**rs21 - ( rs21+2 )
      do 200 i=1,10
       rv21 (i)=dble(i)
       rv22 (i)=i**rs21
       iv21 (i)=rs22**3
       lv21 (i)=ls21.and.rv21(i)+30.01.gt.rv22(i)
       if ((rv22 (i) - (rs21+i))-rs23+.01) 21,22,22
   21  iv22 (i)=max(aint(i*i/2.),1)
       iv23 (i)=sqrt(i*i/4.d0)
       goto  200
   22  rv23 (i)= dble(rv21(i))/iv21(i)+2.d0/iv21(i)
       ls22    = rv23(i) .gt. iv22(i)
       t=rv23(i)
       j=iv22(i)
       write(6,*) j,t
       if ( ls21 .eqv. lv21(i)) then
         ds22    =rv22(i)/i
         iv23 (i)=sqrt(i*i/16.d0)+.5
         lv21 (i)=(imag(sqrt(cs21*rv21(i))).gt.1.0).eqv.ls22
         rv23 (i)=rv23(i)+iv23(i)/rs21-iv22(i)-ds22
       endif
  200 continue
      write(6,*) rv21
      write(6,*) rv22
      write(6,*) rv23
      write(6,*) iv21
      write(6,*) iv22
      write(6,*) iv23
      write(6,*) lv21
      stop
      end
