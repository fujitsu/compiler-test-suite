      call test_r4a
      call test_r4b
      call test_r8
      call test_r16
      write(6,*) "ok"
      end

      subroutine test_r4a
      real(4),dimension(2,2,2,2)::i4

      data i4/16*0/

      i4=1.0
      call check_r4(i4,1.0_4,16)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i4(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_r4(i4,2.0_4,16)
      end

      subroutine test_r4b
      real(4),dimension(4,4,4,4)::i4

      data i4/256*0/

      i4=1.0
      call check_r4(i4,1.0_4,256)

      do i=1,4
         do j=1,4
            do k=1,4
               do n=1,4
                  i4(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_r4(i4,2.0_4,256)
      end

      subroutine test_r8
      real(8),dimension(2,2,2,2)::i8

      data i8/16*0/

      i8=1.0
      call check_r8(i8,1.0_8)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_r8(i8,2.0_8)
      end

      subroutine test_r16
      real(16),dimension(2,2,2,2)::i8

      data i8/16*0/

      i8=1.0
      call check_r16(i8,1.0_16)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_r16(i8,2.0_16)
      end


      subroutine check_r16(i1,n)
      real*16 i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(r16) ",i1,"n=",n
      end

      subroutine check_r8(i1,n)
      real*8 i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(r8) ",i1,"n=",n
      end

      subroutine check_r4(i1,n,m)
      real*4 i1(m),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(r4) ",i1,"n=",n
      end
