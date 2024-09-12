module mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm 
contains
  subroutine ssssssssssssssssssssssssssssss
      type x
        integer:: x1
     end type
    type (x):: v
  call ss2(v)

  contains
    subroutine ss2(d)
      class(*)::d
      type(x)::d2
      logical :: l
      l = same_type_as(d,d2)
    end subroutine
  end subroutine
end module

use mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm  
call ssssssssssssssssssssssssssssss
print *,'pass'
end
