      parameter(n=2)
      integer a(n,n,n,n,n,n,n,n),b(n,n,n,n,n,n,n,n)
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,n,n,n,n,n,n,n)
      integer*1 i1,i2,i3,i4,i5,i6,i7,i8
!$omp parallel do collapse(8) 
      do i8=1,n
       do i7=1,n
        do i6=1,n
         do i5=1,n
          do i4=1,n
           do i3=1,n
            do i2=1,n
             do i1=1,n
              a(i1,i2,i3,i4,i5,i6,i7,i8)=a(i1,i2,i3,i4,i5,i6,i7,i8)+1
             enddo
            enddo
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      end

      subroutine sub0(a,n)
      integer a(n,n,n,n,n,n,n,n)
      integer*1 i1,i2,i3,i4,i5,i6,i7,i8
      do i8=1,n  
       do i7=1,n
        do i6=1,n
         do i5=1,n
          do i4=1,n
           do i3=1,n
            do i2=1,n
             do i1=1,n
              a(i1,i2,i3,i4,i5,i6,i7,i8)=a(i1,i2,i3,i4,i5,i6,i7,i8)+1
             enddo
            enddo
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,n,n,n,n,n,n,n),b(n,n,n,n,n,n,n,n)
      integer*1 i1,i2,i3,i4,i5,i6,i7,i8
      do i8=1,n  
       do i7=1,n
        do i6=1,n
         do i5=1,n
          do i4=1,n
           do i3=1,n
            do i2=1,n
             do i1=1,n
              if (a(i1,i2,i3,i4,i5,i6,i7,i8).ne.
     c            b(i1,i2,i3,i4,i5,i6,i7,i8)) then
               print*,"NG"
               call exit
              endif
             enddo
            enddo
           enddo
          enddo
         enddo
        enddo
       enddo
      enddo
      print*,"OK"
      end
