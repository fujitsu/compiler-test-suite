      integer,parameter ::n(1000)=(/ (i,i=1,1000) /)
      integer a(1000)

      do i=1,1000
        a(i)=n(i)+n(10)
      end do
      do i=1,1000
        if (a(i).ne.(n(i)+n(10)))   stop 'ng'
      end do

      print *,'ok'
      end
