module mod1
       type x
        integer ::x1
        integer ::x2
       end type
       type (x):: v1
end

module mod2
      type x
private
       integer ::x1
       integer ::x22
      end type
    type (x):: v2
end

subroutine s1()
use mod1
use mod2
      if (same_type_as(v1,v2).neqv..false.) print *,'fail'
      end subroutine


      call s1
      print *,'pass'
      end
