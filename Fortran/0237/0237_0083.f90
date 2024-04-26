subroutine s1
  type x1
    integer::v1
  end type
  type x2
    type(x1),pointer::v2
  end type
 integer,pointer::p
 type(x2)::v
 allocate(v%v2)

 p=>v%v2%v1
 if (associated(p)) then
 else
   print *,101
 endif
 if (.not.associated(p,v%v2%v1)) print *,102
end
call s1
print *,'pass'
end

 
 
