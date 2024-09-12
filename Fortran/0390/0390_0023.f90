    use,intrinsic :: iso_c_binding
    integer,pointer :: tt=>null()
    type (c_ptr)::t
    t=c_loc(tt)
    call sub(t,t,k=1)
    call sub(t,k=2)

    allocate(tt)
    t=c_loc(tt)

    call sub(t,t,k=3)
    call sub(t,k=4)
print *,'pass'

    contains
    subroutine sub(a,b,k)
      use,intrinsic :: iso_c_binding
      type(c_ptr)::a
      type(c_ptr),optional::b
   select case(k)
     case (1)
      if (c_associated(a,b))print *,k
     case (2)
      if (c_associated(a))print *,k
     case (3)
      if (.not.c_associated(a,b))print *,k
     case (4)
      if (.not.c_associated(a))print *,k
end select
    end subroutine
    end
