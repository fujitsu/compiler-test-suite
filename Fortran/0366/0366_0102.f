      integer,parameter ::n(1000)=(/ (i,i=1,1000) /)
      integer a(1000)

      do i=1,1000
        a(i)=n(i)+n(10)
        j=i
        call sub(j,a(i),n(i))
      end do

      print *,'ok'
      end

      recursive subroutine sub(i,a,n)
      integer a

      if (a.ne.(n+10))    stop 'ng'
      end
