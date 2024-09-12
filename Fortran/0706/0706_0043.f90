      call s1
      print *,'pass'
      end
      subroutine s1
      integer ,dimension(100)::   a2,a3
      integer                       ::a1
      integer flag
      a2=0
      flag=3; call ss1(a1,a2,a3)
      contains
       subroutine ss1(a1,a2,a3)
       integer ,dimension(:)::   a2,a3
       integer              ::a1
       call random_seed()
       call random_seed(size=a1)
       call random_seed(put=a2)
       call random_seed(get=a3)
     end subroutine
     end
