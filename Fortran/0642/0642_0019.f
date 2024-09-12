      integer d
      type       test
       integer :: a
       real    :: b
      end type     
      type   (test) c
      c%a =d
      c%b =d
      print *,'pass'
      end
