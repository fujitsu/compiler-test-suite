      integer function func10()
      func10=10
      end function

      integer::i,a(10,10),func10
!$omp parallel do collapse(2) lastprivate(i)
      do i=1,func10()
        do j=1,10
          a(j,i)=j*i
        enddo
      enddo
      if (i.ne.11) then
        print*,"NG:",i
        call exit
      endif
      do i=1,10
        do j=1,10
          if (a(j,i).ne.j*i) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
