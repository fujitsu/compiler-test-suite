module m1
abstractinterface
   subroutine gen02()
   end subroutine
end interface
end

subroutine s1
use m1
print *,'pass'
end

call s1
end
