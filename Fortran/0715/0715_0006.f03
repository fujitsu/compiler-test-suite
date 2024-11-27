module m
  type t
    private
     integer:: a
  end type
  type w
    private
     integer:: a
  end type
 contains
  subroutine process(x,callback)
    type(t),intent(in):: x
    interface
       subroutine callback(e)
        import
        type(t),intent(in):: e
        integer w
       end subroutine
    end interface
    call callback(x)
  end subroutine
end module

use m
print *,'pass'
end
