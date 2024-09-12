      real*8 stime,etime
      integer a(20),b(20),n/20/
      integer c(20)/2,2,4,1,3,7,9,10,8,1,1,1,2,3,4,5,6,7,1,2/
      integer x(20)/1,1,2,2,1,1,0,3,1,0,0,1,2,3,2,2,1,0,0,0/
      integer y(20)/1,1,2,2,1,1,0,3,1,0,1,2,3,1,2,3,1,2,3,0/
      data a/20*0/
      data b/10,11,12,13,14,15,16,19,20,20,10,11,12,13,14,15,
     &       16,17,18,19/

      do i=1,n,2
        select case(x(i))
          case (1)
            select case(y(i))
              case (1)
                a(i) = b(i) + c(i)
              case (2)
                a(i) = b(i) - c(i)
            end select
          case (2)
            select case(y(i))
              case (1)
                a(i) = b(i) * c(i)
              case default
                a(i) = b(i) / c(i)
            end select
          case default
            select case(y(i))
              case (1)
                a(i) = i * i
              case (3)
                a(i) = a(i) * i
            end select
        end select
      enddo
      print *,a

      do i=1,n,2
        if(x(i).eq.1) then
          if(y(i).eq.1) then
            a(i) = b(i) + c(i)
          elseif(y(i).eq.2) then
            a(i) = b(i) - c(i)
          endif
        elseif(x(i).eq.2) then
          if(y(i).eq.1) then
            a(i) = b(i) * c(i)
          else
            a(i) = b(i) / c(i)
          endif
        else
          if(y(i).eq.1) then
            a(i) = i * i
          endif
          if(y(i).eq.3) then
            a(i) = a(i) * i
          endif 
        endif
      enddo
      print *,a

      end
