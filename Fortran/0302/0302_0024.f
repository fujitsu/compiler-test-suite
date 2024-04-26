      call test_i1
      call test_i2
      call test_i4a
      call test_i4b
      call test_i8
      write(6,*) "ok"
      end

      subroutine test_i1
      integer(1),dimension(2,2,2,2)::i1
      data i1/16*0/

      i1=1
      call check_i1(i1,1_1)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i1(n,k,j,i) = 2
               enddo
            enddo
         enddo
      enddo

      call check_i1(i1,2_1)
      end

      subroutine test_i2
      integer(2),dimension(2,2,2,2)::i2

      data i2/16*0/

      i2=1
      call check_i2(i2,1_2)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i2(n,k,j,i) = 2
               enddo
            enddo
         enddo
      enddo

      call check_i2(i2,2_2)
      end

      subroutine test_i4a
      integer(4),dimension(2,2,2,2)::i4

      data i4/16*0/

      i4=1
      call check_i4(i4,1_4,16)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i4(n,k,j,i) = 2
               enddo
            enddo
         enddo
      enddo

      call check_i4(i4,2_4,16)
      end

      subroutine test_i4b
      integer(4),dimension(4,4,4,4)::i4

      data i4/256*0/

      i4=1
      call check_i4(i4,1_4,256)

      do i=1,4
         do j=1,4
            do k=1,4
               do n=1,4
                  i4(n,k,j,i) = 2
               enddo
            enddo
         enddo
      enddo

      call check_i4(i4,2_4,256)
      end

      subroutine test_i8
      integer(8),dimension(2,2,2,2)::i8

      data i8/16*0/

      i8=1
      call check_i8(i8,1_8)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = 2
               enddo
            enddo
         enddo
      enddo

      call check_i8(i8,2_8)
      end


      subroutine check_i1(i1,n)
      integer*1 i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(i1) ",i1,"n=",n
      end

      subroutine check_i2(i1,n)
      integer*2 i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(i2) ",i1,"n=",n
      end

      subroutine check_i8(i1,n)
      integer*8 i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(i8) ",i1,"n=",n
      end

      subroutine check_i4(i1,n,m)
      integer*4 i1(m),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(i4) ",i1,"n=",n
      end
