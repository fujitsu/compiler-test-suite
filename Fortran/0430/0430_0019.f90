 integer,contiguous,pointer::p0
  dimension p0(:)
  type x0
    integer:: t0(2)=1
     end type
      type(x0),target:: tt
       p0=>tt%t0
   call ss(p0)
        print *,'pass'
contains
subroutine ss(x)
 integer::x(:)
if (any(x/=1)) print *,101
end subroutine
         end
