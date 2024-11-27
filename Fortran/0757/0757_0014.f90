interface
   subroutine foo(pp)
     integer,pointer::pp(:)
   end subroutine
end interface
integer,pointer::p(:)
allocate(p(3))
call foo(p)
end

   subroutine foo(pp)
     integer,pointer,contiguous::pp(:)
   end subroutine
