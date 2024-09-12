      call s1
      print *,'pass'
      end
      subroutine s1
      integer a1,a2,a3
      call ss1(a1=a1,a2=a2,a3=a3)
      contains
       subroutine ss1(a1,a2,a3)
       integer              ::a1,a2,a3
       call system_clock(count=a1,count_rate=a2,count_max=a3)
       call system_clock(         count_rate=a2,count_max=a3)
       call system_clock(count=a1,              count_max=a3)
       call system_clock(count=a1,count_rate=a2             )
       call system_clock(count=a1                           )
       call system_clock(         count_rate=a2             )
       call system_clock(                       count_max=a3)
       call system_clock(                                   )
     end subroutine
     end
