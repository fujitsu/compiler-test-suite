module mod
       type x
        integer ::x1
        integer ::x2
       end type
       type (x):: v1
       contains
       subroutine s2
      type x
       integer ::x1
       integer ::x2
      end type
    type (x):: v2
      if (same_type_as(v1,v2).neqv..false.) call errtra
      end subroutine
      end

      use mod
      call s2
      print *,'pass'
      end
subroutine errtra()
print *,'err'
end
