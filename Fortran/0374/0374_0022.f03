module m
  type t
    private
     integer:: a
  end type
end module

program main
 use m
 print *,'pass'
 contains
  subroutine process(x,callback)
    type(t),intent(in):: x
    interface
       subroutine callback(e)
        import
        type(t),intent(in):: e
       end subroutine
    end interface
    call callback(x)
  end subroutine
end
