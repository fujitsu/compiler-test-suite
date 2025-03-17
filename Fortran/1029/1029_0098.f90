      logical::l(2)

      l=(/.false.,.true./)
      do i=1,2
        if (.not.l(i)) goto 100
      enddo
  100 continue
      if (i/=1) write(6,*) "NG"
      do i=1,2
        if (.not.l(i)) exit
      enddo
      if (i/=1) write(6,*) "NG"
      print *,'pass'
      end
