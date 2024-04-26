      module m0
       private
       public::a,b
       interface a
        module procedure s1,s2
       end interface
       interface b
        module procedure e1,e2
       end interface
      contains
        subroutine s1(i)
         integer::i
          i=i+1
        entry e1(i)
          i=i+2
        end subroutine
        subroutine s2(r)
         real::r
          r=r+3.0e0
        entry e2(r)
          r=r+4.0e0
        end subroutine
      end module m0

      module m1
       use m0
       integer::i
       real::r
       contains
        subroutine x1()
          call a(i)
          call a(r)
          if (i/=3.or.r/=7.0e0) print *,'error1'
        end subroutine
        subroutine x2()
          call b(i)
          call b(r)
          if (i/=2.or.r/=4.0e0) print *,'error2'
        end subroutine
      end module m1

      program main
       use m1
       i=0
       r=0.0e0
       call x1()
       i=0
       r=0.0e0
       call x2()
       print *,'pass'
      end program
