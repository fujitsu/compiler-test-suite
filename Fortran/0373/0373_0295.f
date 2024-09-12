      real*8 stime,etime
      integer a(10),b(10),n/10/
      integer c(10)/2,2,4,1,3,7,9,10,8,1/
      integer x(10)/1,1,2,2,1,1,0,3,1,0/
      data a/10*0/
      data b/10,11,12,13,14,15,16,19,20,20/

      do i=1,n
        select case(x(i))
          case (1)
            a(i) = b(i) + c(i)
          case (2)
            a(i) = b(i) - c(i)
          case (0)
            a(i) = b(i) * c(i)
          case default
            a(i) = b(i) / c(i)
        end select
      enddo
      print *,a

      do i=1,n
        if(x(i).eq.1) then
          a(i) = b(i) + c(i)
        endif
        if(x(i).eq.2) then
          a(i) = b(i) - c(i)
        endif
        if(x(i).eq.0) then
          a(i) = b(i) * c(i)
        endif
        if(x(i).eq.3) then
          a(i) = b(i) / c(i)
        endif
      enddo
      print *,a

      end
