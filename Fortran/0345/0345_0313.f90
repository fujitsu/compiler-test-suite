      module m0
       integer::j=1
      contains
       subroutine s0(i)
        i=i+1
       end subroutine 
      end module m0

      module m1
       use m0
       public::s0,s1
      contains
       subroutine s1(i)
        call s0(i)
        i=i+1
       end subroutine 
      end module m1

      module m2
       use m1
       public::s0,s1,s2
      contains
       subroutine s2(i)
        call s0(i)
        call s1(i)
        i=i+1
       end subroutine 
      end module m2

      module m3
       use m2
       public::s0,s1,s2,s3
      contains
       subroutine s3(i)
        call s0(i)
        call s1(i)
        call s2(i)
        i=i+1
       end subroutine 
      end module m3

      use m3
       i=j
       call s0(i)
       call s1(i)
       call s2(i)
       call s3(i)
       if (i/=16) print *,'error'
       print *,'pass'
      end
