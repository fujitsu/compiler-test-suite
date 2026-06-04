      call s1
      print *,'pass'
      end 
      subroutine s1
      type t0;integer z;end type
      type t1
        integer ::x14(-12:-11)
        type(t0)::t14(-12:-11)
        integer ::y14(-12:-11)
      end type
      type t2
          integer  ,dimension(-22:-21)::x21
          type (t1),dimension(-22:-21)::t21
          integer  ,dimension(-22:-21)::y21
      end type
      type (t2),dimension(-32:-31)  ::w32
      call set321(w32(-31)%t21(-21)%t14,1)
      if (any(w32(-31)%t21(-21)%t14%z/=1))print *,'fail'
      call set321(w32(-31)%t21     %t14(-11),2)
      if (any(w32(-31)%t21     %t14(-11)%z/=2))print *,'fail'
      call set321(w32     %t21(-21)%t14(-11),3)
      if (any(w32     %t21(-21)%t14(-11)%z/=3))print *,'fail'
      call set321(w32(-31)%t21(-21)%t14(:),4)
      if (any(w32(-31)%t21(-21)%t14%z/=4))print *,'fail'
      call set321(w32(-31)%t21(:)  %t14(-11),5)
      if (any(w32(-31)%t21     %t14(-11)%z/=5))print *,'fail'
      call set321(w32(:)  %t21(-21)%t14(-11),6)
      if (any(w32(:)  %t21(-21)%t14(-11)%z/=6))print *,'fail'
      contains
      subroutine set321(id,jd)
      type (t0)::id(:); if (size(id)/=2)print *,'fail'; id=t0(jd)
      end subroutine
      end
