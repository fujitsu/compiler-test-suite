      call test_c8a
      call test_c8b
      call test_c16
      call test_c32
      write(6,*) "ok"
      end

      subroutine test_c8a
      complex(4),dimension(2,2,2,2)::i4

      data i4/16*(0.,0.)/

      i4=cmplx(1.0,0.0)
      call check_c8(i4,cmplx(1.,0.),16)

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i4(n,k,j,i) = cmplx(2.0,0.0)
               enddo
            enddo
         enddo
      enddo

      call check_c8(i4,cmplx(2.0,0.0),16)
      end

      subroutine test_c8b
      complex(4),dimension(4,4,4,4)::i4

      data i4/256*0/

      i4=1.0
      call check_c8(i4,cmplx(1.0,0.),256)

      do i=1,4
         do j=1,4
            do k=1,4
               do n=1,4
                  i4(n,k,j,i) = (2.0,0.)
               enddo
            enddo
         enddo
      enddo

      call check_c8(i4,(2.0,0.),256)
      end

      subroutine test_c16
      complex(8),dimension(2,2,2,2)::i8

      data i8/16*0/

      i8=1.0
      call check_c16(i8,(1.0_8,0._8))

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_c16(i8,(2.0_8,0._8))
      end

      subroutine test_c32
      complex(16),dimension(2,2,2,2)::i8

      data i8/16*0/

      i8=1.0
      call check_c32(i8,(1.0_16,0._16))

      do i=1,2
         do j=1,2
            do k=1,2
               do n=1,2
                  i8(n,k,j,i) = 2.0
               enddo
            enddo
         enddo
      enddo

      call check_c32(i8,(2.0_16,0._16))
      end


      subroutine check_c32(i1,n)
      complex(16) i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(c32) ",i1,"n=",n
      end

      subroutine check_c16(i1,n)
      complex(8) i1(16),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(c16) ",i1,"n=",n
      end

      subroutine check_c8(i1,n,m)
      complex(4) i1(m),n

      do i=1,16
         if (i1(i) .ne. n) goto 10
      enddo
      return
 10   write(6,*) "error(c8) ",i1,"n=",n
      end
