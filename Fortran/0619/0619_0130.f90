module a_a
  implicit none
  private
  public :: array_class
  type, abstract :: array_class
    private
  contains
    private
    procedure(sub_assign_a_a), public, deferred :: a1
    procedure(sub_a),          public, deferred :: a2
    procedure(sub_a_a),        public, deferred :: a3
    procedure(sub_a_a),        public, deferred :: a4
    procedure(sub_a_s),        public, deferred :: a5
    procedure(sub_a_s_a),      public, deferred :: a6
  end type array_class

  abstract interface
    subroutine sub_assign_a_a(t,v)
      import array_class
      class(array_class), intent(inout) :: t
      class(array_class), intent(in)    :: v
    end subroutine
    subroutine sub_a (t)
      import :: array_class
      class(array_class),intent(inout)  :: t
    end subroutine
    subroutine sub_a_a (t,v)
      import :: array_class
      class(array_class),intent(inout)  :: t
      class(array_class),intent(in)     :: v
    end subroutine
    subroutine sub_a_s (t,s)
      import :: array_class
      class(array_class),intent(inout)  :: t
      real, intent(in)                          :: s
    end subroutine
    subroutine sub_a_s_a (t,s,v)
      import :: array_class
      class(array_class),intent(inout)  :: t
      real, intent(in)                          :: s
      class(array_class),intent(in)     :: v
    end subroutine
  end interface
end module a_a
use a_a
print *,'pass'
end
