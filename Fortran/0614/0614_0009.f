      integer*4 a(10),b(10),c(10),x(10),error/0/
      data b/1,2,3,4,5,6,7,8,9,10/
      pointer(ptr,x)
      ptr=loc(b)
      call sub1(a,x)
      call sub1(c,b)
      do i=1,10
        if(a(i) .ne. c(i)) error=error+1
      end do
      select case(error)
      case(0)
        write(6,*) '*** ok ***'
      case default
        write(6,*) '*** ng ***'
        write(6,*) 'a=',a
        write(6,*) 'c=',c
      end select
      stop
      end

      subroutine sub1(a,b)
      integer*4 a(10),b(10)
      a=b
      return
      end
