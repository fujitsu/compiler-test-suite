subroutine s
 implicit none
  procedure(),pointer:: p=> null()
if (associated( p ) )print *,201
end
call s
print *,'pass'
end
