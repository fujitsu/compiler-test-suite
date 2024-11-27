 integer,contiguous,pointer::p0
  type x0
    integer:: t0
     end type
      type(x0),target:: tt
       p0=>tt%t0
        print *,'pass'
         end
