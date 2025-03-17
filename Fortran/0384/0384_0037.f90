       subroutine s1
       type x
        integer ::x1
        integer ::x2
       end type
       type (x):: v1
       call s2
       contains
       subroutine s2
      type x
       integer ::x1
       integer ::x2
      end type
    type (x):: v2
      if (same_type_as(v1,v2).neqv..false.) print *,'fail'
      end subroutine
      end
      call s1
      print *,'pass'
      end

