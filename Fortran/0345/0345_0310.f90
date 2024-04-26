      program main
       use m1
        integer,parameter::n1=1,n2=2,n3=3,n4=4,n5=5,n6=6,n7=7
        integer(8),allocatable,dimension(:,:,:,:,:,:,:)::p
        integer(8),target ,dimension(n7,n6,n5,n4,n3,n2,n1)::t
        integer(8)::sum=0
        t(:,:,:,:,:,:,:)=1_8
        allocate(p(n7,n6,n5,n4,n3,n2,n1))
        p=t
        call s1(p,n7,n6,n5,n4,n3,n2,n1,sum) 
        if (sum/=(5040_8)) print *,'error ',sum
        print *,'pass'
      end program

      module m1
       use m2   
       contains
        subroutine s1(p,n7,n6,n5,n4,n3,n2,n1,sum)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i7=1,n1
            call s2(p,n7,n6,n5,n4,n3,n2,n1,sum,i7)
          enddo
        end subroutine
      end module

      module m2
       use m3
       contains
        subroutine s2(p,n7,n6,n5,n4,n3,n2,n1,sum,i7)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i6=1,n2
            call s3(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6)
          enddo
        end subroutine
      end module

      module m3
       use m4
       contains
        subroutine s3(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i5=1,n3
            call s4(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5)
          enddo
        end subroutine
      end module

      module m4
       use m5
       contains
        subroutine s4(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i4=1,n4
            call s5(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4)
          enddo
        end subroutine
      end module

      module m5
       use m6
       contains
        subroutine s5(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i3=1,n5
            call s6(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3)
          enddo
        end subroutine
      end module

      module m6
       use m7
       contains
        subroutine s6(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i2=1,n6
            call s7(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3,i2)
          enddo
        end subroutine
      end module

      module m7
       use m8
       contains
        subroutine s7(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3,i2)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          do i1=1,n7
            call s8(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3,i2,i1)
          enddo
        end subroutine
      end module

      module m8
       contains
        subroutine s8(p,n7,n6,n5,n4,n3,n2,n1,sum,i7,i6,i5,i4,i3,i2,i1)
         integer(8),dimension(n7,n6,n5,n4,n3,n2,n1)::p
         integer(8)::sum
          sum=sum+p(i1,i2,i3,i4,i5,i6,i7)
        end subroutine
      end module
