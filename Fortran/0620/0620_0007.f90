subroutine s1
 type x
    integer::elm
    integer,pointer::ptr
 end type
 type(x)::var
 write(3,*) var%elm
 allocate(var%ptr)
 n = var%ptr
 write(3,*) n
end
call s1
print *,'pass'
end
