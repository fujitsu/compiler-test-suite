module m
interface
  subroutine s0
  end subroutine
end interface
end
subroutine s
use m
interface
  subroutine s1
  end subroutine
  subroutine s2
  end subroutine
end interface
call ss
end
use m
call s
print *,'pass'
end
subroutine ss
interface
  subroutine s3
  end subroutine
end interface
end
