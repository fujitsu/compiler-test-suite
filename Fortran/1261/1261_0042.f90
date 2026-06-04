      parameter(n=2)
      integer a(n,n,n,n,n,n,n,n,n,n)
      integer b(n,n,n,n,n,n,n,n,n,n) 
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,n,n,n,n,n,n,n,n,n)
      integer*2 i1,i2,i3,i4,i5,i6,i7,i8,i9,i10
!$omp parallel do collapse(10) 
      do i10=1,n
       do i9=1,n
        do i8=1,n
         do i7=1,n
          do i6=1,n
           do i5=1,n
            do i4=1,n
             do i3=1,n
              do i2=1,n
               do i1=1,n 
                a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10)=a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10)+1
               enddo
              enddo
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
      integer a(n,n,n,n,n,n,n,n,n,n)
      integer*2 i1,i2,i3,i4,i5,i6,i7,i8,i9,i10
      do i10=1,n
       do i9=1,n
        do i8=1,n
         do i7=1,n
          do i6=1,n
           do i5=1,n
            do i4=1,n
             do i3=1,n
              do i2=1,n
               do i1=1,n 
                a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10)=a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10)+1
               enddo
              enddo
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
      integer a(n,n,n,n,n,n,n,n,n,n)
      integer b(n,n,n,n,n,n,n,n,n,n)
      integer*2 i1,i2,i3,i4,i5,i6,i7,i8,i9,i10
      do i10=1,n
       do i9=1,n
        do i8=1,n
         do i7=1,n
          do i6=1,n
           do i5=1,n
            do i4=1,n
             do i3=1,n
              do i2=1,n
               do i1=1,n 
                if (a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10).ne.b(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10)) then
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
       enddo
      enddo
      print*,"OK"
      end
