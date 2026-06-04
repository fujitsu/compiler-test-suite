      call s1
      print *,'pass'
      end
      module m32
      type t0;integer z;end type
      type t1
        type(t0)::t14(-12:-11)
      end type
      type t2; type (t1),dimension(-22:-21)::t21; end type
      type (t2),dimension(-32:-31)  ::w32
      end module
      subroutine s1
      use m32 
      call set321(w32(-31)%t21(-21)%t14)
      contains
      subroutine set321(id)
      type (t0)::id(:); if (size(id)/=2)print *,'fail'; id=t0(1)
      end subroutine
      end
