      call sub1()
      call sub2()
      print  *,'pass'
      end
      subroutine sub2()
      integer*4   ia(1),ib(100),ic(10)
      integer*4   ip(101)
      parameter (ip=(/(i,i=1,101)/) )
      call random_seed()
      ib=1
      ia=-100
      call random_seed(size=ia(1))
      call random_seed(put=(/(0,i=1,10)/))
      call random_seed(put=ip(1:101:10))
      call random_seed(get=ic)
      call random_seed(get=ib(1:100:10))
      if (ia(1).eq.-100) print *,'fail'
      if (ia(1) > 0) then
          if (ib(1).ne.1) print *,'fail'
      endif
      if (ia(1) > 1) then
        do i=2,ia(1)
         if (i<ia(1)) then
          if (ib(i*10+1).ne.i*10+1) print *,'fail'
         endif
        end do
      endif
      end
      subroutine sub1()
      integer*4   ia(1),ib(11)
      integer*4   ip(11)
      parameter (ip=(/(i,i=1,11)/) )
      call random_seed()
      ib=1
      ia=-10
      call random_seed(size=ia(1))
      call random_seed(put=ip)
      call random_seed(get=ib)
      if (ia(1).eq.-10) print *,'fail'
      do i=1,ia(1)
       if (ib(i).ne.i) print *,'fail'
      end do
      end
