      integer ::a(1000)=0
      do i=1,1000
        j=i-5*(i/5)
        select case (j)
        case(0)
         a(i)=a(i)+0
        case(1)
         a(i)=a(i)+1
        case(2)
         a(i)=a(i)+2
        case(3)
         a(i)=a(i)+3
        case(4)
         a(i)=a(i)+4
        end select
      end do

      do i=1,1000
       if (a(i).ne.(i-5*(i/5)))   stop 'ng'
      end do
      print *,'ok'
      end
