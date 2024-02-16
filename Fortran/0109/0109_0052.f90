
      call s1(100)
      stop
      end
      
      subroutine s1(n)
      integer*4 n,check
      integer*4 a(100),b(100),c(100)
      data a/10*0,10*1,10*0,10*1,10*0&
            ,10*1,10*0,10*1,10*0,10*1/
      data b/10*1,10*2,10*3,10*4,10*5&
            ,10*6,10*7,10*8,10*9,10*10/
      data c/10*1,10*3,10*5,10*7,10*9&
            ,10*2,10*4,10*6,10*8,10*10/

      do I=1,10
         where(a(1:n) .gt. 0)
           b(1:n)=b(1:n)+1
           c(1:n)=c(1:n)+1
         elsewhere
          b(1:n)=b(1:n)-2
          c(1:n)=c(1:n)-2
        endwhere
      enddo
      if(check(b,c).eq.0) then
         write(6,*) '*** ok !! ***'
      else
         write(6,*) '*** ng ?? ***'
      endif
      end

      integer function check(b,c) result(res)
      integer b(100),c(100),tb(100),tc(100)
      data tb/10*-19,10* 12,10*-17,10* 14,10*-15&
             ,10* 16,10*-13,10* 18,10*-11,10* 20/
      data tc/10*-19,10* 13,10*-15,10* 17,10*-11&
             ,10* 12,10*-16,10* 16,10*-12,10* 20/
      res=0
      do i=1,100
         if(b(i) /= tb(i) .or. c(i) /= tc(i) ) res=1
      enddo
      if(res/=0) then
         write(6,*) 'true value(b): ',tb( 1),tb(11),tb(21),tb(31)&
                                     ,tb(41),tb(51),tb(61),tb(71)&
                                     ,tb(81),tb(91)
         write(6,*) 'calu value(b): ', b( 1), b(11), b(21), b(31)&
                                     , b(41), b(51), b(61), b(71)&
                                     , b(81), b(91)
         write(6,*) 'true value(b): ',tc( 1),tc(11),tc(21),tc(31)&
                                     ,tc(41),tc(51),tc(61),tc(71)&
                                     ,tc(81),tc(91)
         write(6,*) 'calu value(b): ', c( 1), c(11), c(21), c(31)&
                                     , c(41), c(51), c(61), c(71)&
                                     , c(81), c(91)
      endif
      end
         
