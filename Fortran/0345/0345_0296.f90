      program main
       use m1
       use m8
        call s0()
        call s1() 
        if (sum/=5040_8) print *,'error ',sum
        print *,'pass'
      end program

      module m1
       use m8,only:p,n1
       use m2   
       contains
        subroutine s1()
          do i7=1,n1
            call s2()
          enddo
        end subroutine
      end module

      module m2
       use m8,only:p,n2
       use m3
       contains
        subroutine s2()
          do i6=1,n2
            call s3()
          enddo
        end subroutine
      end module

      module m3
       use m8,only:p,n3
       use m4
       contains
        subroutine s3()
          do i5=1,n3
            call s4()
          enddo
        end subroutine
      end module

      module m4
       use m8,only:p,n4
       use m5
       contains
        subroutine s4()
          do i4=1,n4
            call s5()
          enddo
        end subroutine
      end module

      module m5
       use m8,only:p,n5
       use m6
       contains
        subroutine s5()
          do i3=1,n5
            call s6()
          enddo
        end subroutine
      end module

      module m6
       use m7
       contains
        subroutine s6()
          do i2=1,n6
            call s7()
          enddo
        end subroutine
      end module

      module m7
       use m8
       contains
        subroutine s7()
          do i1=1,n7
            call s8()
          enddo
        end subroutine
      end module

      module m8
       integer,parameter::n1=1,n2=2,n3=3,n4=4,n5=5,n6=6,n7=7
       integer(8),pointer,dimension(:,:,:,:,:,:,:)::p
       integer(8),target ,dimension(n7,n6,n5,n4,n3,n2,n1),private::t=1
       integer(8)::sum=0
       integer(4)::i1,i2,i3,i4,i5,i6,i7
       contains
        subroutine s0()
          p=>t
        end subroutine
        subroutine s8()
          sum=sum+p(i1,i2,i3,i4,i5,i6,i7)
        end subroutine
      end module
