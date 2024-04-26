      real*8  a(10),b(10),c(10),d(10),e(10),f(10)
      real*8  resa(10),resc(10),rese(10)
      data resa/3,6,9,12,15,18,21,24,27,30/
      data resc/1.090702573174318,4.756802495307928,
     +          6.279415498198926,7.010641753376619,
     +          10.54402111088937,12.53657291800043,
     +          13.00939264430513,16.28790331666507,
     +          18.75098724677168,19.08705474927237/
      data rese/3,12,27,48,75,108,147,192,243,300/
      real*8 r8func

      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
         f(i) = i*3
      enddo
      
      do j=1,5
      do i=int(cos(real(j)))+1,ifunc(j+5)
         a(i) = b(i)+ r8func(i)

         c(i) = d(i) - sin(d(i))

         e(i) = f(i) * i
      enddo
      enddo
      do i=1,10
         if (a(i).ne.resa(i) .or. e(i).ne.rese(i) .or.
     +        abs(c(i)-resc(i)) .gt. 0.0005 ) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue
      call sub1()
      END                      

      subroutine sub1()
      real*8  a(10),b(10),c(10),d(10),e(10),f(10)
      real*8  resa(10),resc(10),rese(10)
      data resa/3,6,9,12,15,18,21,24,27,30/
      data resc/1.090702573174318,4.756802495307928,
     +          6.279415498198926,7.010641753376619,
     +          10.54402111088937,12.53657291800043,
     +          13.00939264430513,16.28790331666507,
     +          18.75098724677168,19.08705474927237/
      data rese/3,12,27,48,75,108,147,192,243,300/
      real*8 r8func

      a = 0
      do i=1,10
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
         f(i) = i*3
      enddo
      
      do j=1,5
      do i=int(cos(real(j)))+1,ifunc(j+5)
         a(i) = b(i)+ r8func(i)

         c(i) = d(i) - sin(d(i))

         e(i) = f(i) * i
      enddo
      enddo
      do i=1,10
         if (a(i).ne.resa(i) .or. e(i).ne.rese(i) .or.
     +        abs(c(i)-resc(i)) .gt. 0.0005 ) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) c
      write(6,*) e
 1100 continue
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
      real*8 function r8func(nn)
      r8func = nn*2
      return
      end
