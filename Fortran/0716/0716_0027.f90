 interface
  subroutine sub(a, b, c)
   integer a, b
   integer :: c
  end
 end interface
end

subroutine sub(a, b, c)
 integer a, b
 integer,target:: c
end
