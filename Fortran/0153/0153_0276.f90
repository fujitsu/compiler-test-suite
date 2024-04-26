subroutine s1
 type x1(k)
   integer,kind::k
   integer(k):: x1(k)
 end type
 type(x1(8)),allocatable:: v1
 allocate( x1(8):: v1)
 v1%x1(8)=1
 if (v1%k/=8) print *,101 
 if (kind(v1%x1)/=8) print *,102 
 if (size(v1%x1)/=8) print *,103 
 if (sizeof(v1%x1)/=8*8) print *,1031 
 if (     v1%x1(8)/=1) print *,104 
end
call s1
print *,'pass'
end
