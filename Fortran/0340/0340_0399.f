      call sub1
      call sub2
      end

      subroutine sub1
      real*4  a(10),resa(10),b(10)
      data resa/1,2,2,2,15,2,2,2,2,2/

      do i=1,10
         select case(i)

      case(1)
         a(i)=1

         a(i+1)=1

      case(5)

         a(i)=i+10

      case default

         a(i) = 2
      end select

         select case(i)

      case(1)
         b(i)=1

         b(i+1)=1

      case(5)

         b(i)=i+10

      case default

         b(i) = 2
      end select

      end do

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.resa(i)) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
 1100 continue

      end

      subroutine sub2
      real*4  a(10),resa(10),b(10)
      data resa/1,2,2,2,15,2,2,2,2,2/

      a = 0
      do i=1,10
         select case(i)

      case(1)
         a(i)=1

         a(i+1)=1

      case(5)

         a(i)=i+10

      case default

         a(i) = 2
      end select

         select case(i)

      case(1)
         b(i)=1

         b(i+1)=1

      case(5)

         b(i)=i+10

      case default

         b(i) = 2
      end select

      end do

      do i=1,10
         if (a(i).ne.resa(i).or.b(i).ne.resa(i)) goto 199
      enddo

      write(6,*) " ## ok 2 ## "
      goto 1100
 199  write(6,*) " ## error 2 ##"
      write(6,*) a
 1100 continue
      end

