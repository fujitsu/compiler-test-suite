      program main
       call s1()
       call s2()
        print *,'pass'
      end program main
      subroutine s1()
       integer::a,bb(5)
        bb(:)=1
        a=bb(5)
      end subroutine
      subroutine s2()
       integer::a,bb(5)
        bb=1
        a=bb(5)
      end subroutine
