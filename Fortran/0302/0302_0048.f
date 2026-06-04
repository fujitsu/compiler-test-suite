      call test_l1
      call test_l2
      call test_l4a
      call test_l4b
      call test_l8
      write(6,*) "ok"
      end

      subroutine test_l1
      logical(1),dimension(2,2,2,2)::i1
      data i1/16*.false./

      i1=.true.
      call check_l1(i1,.true._1)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i1(n,k,j,i) = .false.
               enddo
            enddo
         enddo
      enddo

      call check_l1(i1,.false._1)
      end

      subroutine test_l2
      logical(2),dimension(2,2,2,2)::i2

      data i2/16*.false./

      i2=.true.
      call check_l2(i2,.true._2)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i2(n,k,j,i) = .false.
               enddo
            enddo
         enddo
      enddo

      call check_l2(i2,.false._2)
      end

      subroutine test_l4a
      logical(4),dimension(2,2,2,2)::i4

      data i4/16*.false./

      i4=.true.
      call check_l4(i4,.true._4,16)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i4(n,k,j,i) = .false.
               enddo
            enddo
         enddo
      enddo

      call check_l4(i4,.false._4,16)
      end

      subroutine test_l4b
      logical(4),dimension(4,4,4,4)::i4

      data i4/256*.false./

      i4=.true.
      call check_l4(i4,.true._4,256)

      do i=1,4
         do j=1,4
            do k=1,4
               do n=1,4
                  i4(n,k,j,i) = .false.
               enddo
            enddo
         enddo
      enddo

      call check_l4(i4,.false._4,256)
      end

      subroutine test_l8
      logical(8),dimension(2,2,2,2)::i8

      data i8/16*.false./

      i8=.true.
      call check_l8(i8,.true._8)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = .false._8
               enddo
            enddo
         enddo
      enddo

      call check_l8(i8,.false._8)
      end


      subroutine check_l1(i1,n)
      logical*1 i1(16),n

      do i=1,16
         if (i1(i) .neqv. n) goto 10
      enddo
      return
 10   write(6,*) "error(l1) ",i1,"n=",n
      end

      subroutine check_l2(i1,n)
      logical*2 i1(16),n

      do i=1,16
         if (i1(i) .neqv. n) goto 10
      enddo
      return
 10   write(6,*) "error(l2) ",i1,"n=",n
      end

      subroutine check_l8(i1,n)
      logical*8 i1(16),n

      do i=1,16
         if (i1(i) .neqv. n) goto 10
      enddo
      return
 10   write(6,*) "error(l8) ",i1,"n=",n
      end

      subroutine check_l4(i1,n,m)
      logical*4 i1(m),n

      do i=1,16
         if (i1(i) .neqv. n) goto 10
      enddo
      return
 10   write(6,*) "error(l4) ",i1,"n=",n
      end
