      parameter(n=3)
      integer a(n,n,n,n,n,n),b(n,n,n,n,n,n)
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,n,n,n,n,n)
      integer*4 i1,i2,i3,i4,i5,i6 
!$omp parallel do collapse(6) 
      do i6=1,n
       do i5=1,n
        do i4=1,n
         do i3=1,n
          do i2=1,n
           do i1=1,n
            a(i1,i2,i3,i4,i5,i6)=a(i1,i2,i3,i4,i5,i6)+1
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      end

      subroutine sub0(a,n)
      integer a(n,n,n,n,n,n)
      integer*4 i1,i2,i3,i4,i5,i6
      do i6=1,n 
       do i5=1,n
        do i4=1,n
         do i3=1,n
          do i2=1,n
           do i1=1,n
            a(i1,i2,i3,i4,i5,i6)=a(i1,i2,i3,i4,i5,i6)+1
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,n,n,n,n,n),b(n,n,n,n,n,n)
      integer*4 i1,i2,i3,i4,i5,i6
      do i6=1,n 
       do i5=1,n
        do i4=1,n
         do i3=1,n
          do i2=1,n
           do i1=1,n
            if (a(i1,i2,i3,i4,i5,i6).ne.b(i1,i2,i3,i4,i5,i6)) then
             print*,"NG"
             call exit
            endif
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      print*,"OK"
      end
