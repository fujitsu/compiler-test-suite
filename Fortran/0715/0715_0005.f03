module m
  type t
    private
     integer:: a
  end type
  type w
    private
     integer:: b
  end type
 contains
  subroutine process(x,y,callback)
    type(t),intent(in):: x
    type(w),intent(in):: y
    interface
       subroutine callback(e,f)
        import t
        type(t),intent(in):: e
        type(w):: f
       end subroutine
    end interface
    call callback(x,y)
  end subroutine
end module

use m
end
