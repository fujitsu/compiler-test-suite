      module m0
       integer(kind=4)::i
       integer(kind=2)::j
       integer(kind=8)::k
      contains
       subroutine sub()
         i=i+j+k
       end subroutine
      end module

      module m1
       use m0
      contains
       subroutine s1()
         call sub()
       end subroutine
      end module

      module m2
       use m1
      contains
       subroutine s2()
        use m0
         call sub()
       end subroutine
      end module

      subroutine s3
       use m0
        call sub()
      end subroutine

      program main
       use m0
       use m1
       use m2
        i=0_4
        j=2_2
        k=8_8
        call s1
        if (i/=10_4) print *,'error1'
        call s2
        if (i/=20_4) print *,'error2'
        call s3
        if (i/=30_4) print *,'error2'
        print *,'pass'
      end program
