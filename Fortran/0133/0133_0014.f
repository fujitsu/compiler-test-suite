      module mod_var
      
      integer,parameter :: N3=3
      integer,parameter :: N2=2
      integer,parameter :: N1=1
      integer,parameter :: POW=7
      integer a(N3,N3,N3,N3,N3,N3,N3)
      integer b(N3,N3,N3,N3,N3,N3,N3)
      integer c(N3,N3,N3,N3,N3,N3,N3)
      integer s1,s2,s3,s4,s5,s6,s7
      integer b1,b2,b3,b4,b5,b6,b7

      end module mod_var


      program main
      use mod_var
      integer,parameter :: ANS=3019

      call init_var()

      do i1=1,N3

         a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,s7:b7)
     &        = a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,s7:b7)
     &        + minval(b)

         a(i1:b1,i1:b2,i1:b3,i1:b4,i1:b5,i1:b6,i1:b7)
     &        = a(i1:b1,i1:b2,i1:b3,i1:b4,i1:b5,i1:b6,
     &        i1:b7) - minval(b)

         do i2=1,N3

            a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,s7:b7)
     &           = a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,
     &           s7:b7) - minval(b)

            a(i1:b1,i2:b2,i1:b3,i2:b4,i1:b5,i2:b6,i1:b7)
     &           = a(i1:b1,i2:b2,i1:b3,i2:b4,i1:b5,i2:b6,
     &           i1:b7) + minval(b)

            do i3=1,N3

               a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,
     &              s7:b7) = a(s1:b1,s2:b2,s3:b3,
     &              s4:b4,s5:b5,s6:b6,s7:b7) + minval(c)

               a(i1:b1,i2:b2,i3:b3,i1:b4,i2:b5,i3:b6,
     &              i1:b7) = a(i1:b1,i2:b2,i3:b3,
     &              i1:b4,i2:b5,i3:b6,i1:b7) - minval(c)

               do i4=1,N3

                  a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,s6:b6,
     &                 s7:b7) = a(s1:b1,s2:b2,s3:b3,
     &                 s4:b4,s5:b5,s6:b6,s7:b7)
     &                 - minval(c)

                  a(i1:b1,i2:b2,i3:b3,i4:b4,i1:b5,i2:b6,
     &                 i3:b7) = a(i1:b1,i2:b2,i3:b3,
     &                 i4:b4,i1:b5,i2:b6,i3:b7)
     &                 + minval(c)

                  do i5=1,N3

                     a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,
     &                    s6:b6,s7:b7) = a(s1:b1,s2:b2,
     &                    s3:b3,s4:b4,s5:b5,s6:b6,s7:b7)
     &                    + minval(b)

                     a(i1:b1,i2:b2,i3:b3,i4:b4,i5:b5,
     &                    i1:b6,i2:b7) = a(i1:b1,i2:b2,
     &                    i3:b3,i4:b4,i5:b5,i1:b6,i2:b7)
     &                    - minval(b)

                     do i6=1,N3

                        a(s1:b1,s2:b2,s3:b3,s4:b4,s5:b5,
     &                       s6:b6,s7:b7) = a(s1:b1,s2:b2,
     &                       s3:b3,s4:b4,s5:b5,s6:b6,
     &                       s7:b7) + minval(b)

                        a(i1:b1,i2:b2,i3:b3,i4:b4,i5:b5,
     &                       i6:b6,i1:b7) = a(i1:b1,i2:b2,
     &                       i3:b3,i4:b4,i5:b5,i6:b6,i1:b7)
     &                       - minval(b)

                        do i7=1,N3

                           a(s1:b1,s2:b2,s3:b3,
     &                          s4:b4,s5:b5,s6:b6,s7:b7)
     &                          = a(s1:b1,s2:b2,s3:b3,
     &                          s4:b4,s5:b5,s6:b6,s7:b7)
     &                          + minval(c)

                           a(i1:b1,i2:b2,i3:b3,
     &                          i4:b4,i5:b5,i6:b6,i7:b7)
     &                          = a(i1:b1,i2:b2,i3:b3,
     &                          i4:b4,i5:b5,i6:b6,i7:b7)
     &                          - minval(c)

                        enddo
                     enddo
                  enddo
               enddo
            enddo
         enddo
      enddo


      call check_maxval_ary()

      contains

      subroutine init_var

      a = reshape((/(MOD(i,7)+1,i=1,N3**POW)/),
     &     (/N3,N3,N3,N3,N3,N3,N3/))
      b = reshape((/(MOD(i,N3)+1,i=1,N3**POW)/),
     &     (/N3,N3,N3,N3,N3,N3,N3/))
      c = reshape((/(MOD(i+1,N3)+1,i=1,N3**POW)/),
     &     (/N3,N3,N3,N3,N3,N3,N3/))      
      s1 = N1*cos(0.0)
      s2 = N2*cos(0.0)
      s3 = N3*cos(0.0)
      s4 = N1*cos(0.0)
      s5 = N2*cos(0.0)
      s6 = N3*cos(0.0)
      s7 = N1*cos(0.0)
      b1 = N3*cos(0.0)
      b2 = N3*cos(0.0)
      b3 = N3*cos(0.0)
      b4 = N3*cos(0.0)
      b5 = N3*cos(0.0)
      b6 = N3*cos(0.0)
      b7 = N3*cos(0.0)

      end subroutine init_var

      subroutine check_maxval_ary()
      integer res

      res = maxval(a)

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end subroutine check_maxval_ary

      end program main
