print *,'pass'
contains
 subroutine csub2(dummy_sub1ptr)
  interface
   subroutine sub1() bind(c)
   end subroutine
   function func1()
    interface
     subroutine sub1() bind(c)
     end subroutine
    end interface
    procedure(sub1), pointer :: func1
   end function
  end interface
  procedure(sub1),  pointer, bind(c) :: dummy_sub1ptr
  procedure(func1), pointer          :: pf1p
  procedure(sub1),  pointer, bind(c) :: pp
  pp => pf1p()
 end subroutine

end

subroutine sub1() bind(c)
end subroutine

subroutine dummy_sub1() bind(c)
end subroutine
