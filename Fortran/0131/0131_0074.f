
      program main
      real,dimension(20)::a
      data a/5*2.0,5*3.0,5*4.0,5*5.0/
      integer i,j,k,l,m
      data i,j,k,l,m/10,1,1,1,1/
c
      a(k:m*i*2:k*2)=a(k*6*j*l)
c
      write(6,*) a
c
      call sub2()
c
      stop
      end
c
      subroutine sub2()
      real,dimension(20)::a,right_result
      data a/5*2.0,5*3.0,5*4.0,5*5.0/
      data right_result/3.,2.,3.,2.,3., 3.,3.,3.,3.,3.,
     &                  3.,4.,3.,4.,3., 5.,3.,5.,3.,5./
      integer i,j,k,l,m
      data i,j,k,l,m/10,1,1,1,1/
      logical no_good/.false./
c
      a(k:m*i*2:k*2)=a(k*6*j*l)
c
      do i=1,20
         if (a(i) /= right_result(i)) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? ng ??????'
      else
         write (6,*) '!!!!!! ok !!!!!!'
      endif
      return
      end
