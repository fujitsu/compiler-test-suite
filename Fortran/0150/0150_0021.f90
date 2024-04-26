module m0
    real(8):: a1(3,4)=reshape([(n,n=1,12)],[3,4]),a2(4,3)=reshape([(n,n=1,12)],[4,3]),a(3,3)
end
module m1
use m0
contains
  subroutine s10
   a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
call s11
   contains
    subroutine s11
     a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
    end subroutine
  end subroutine
end
module m2
use m0
contains
  subroutine s20
   a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
call s21
   contains
    subroutine s21
     a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
    end subroutine
  end subroutine
end
module m3
use m0
  contains
  subroutine s30
   a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
call s31
   contains
    subroutine s31
     a= matmul(a1,a2)
   if (any([a]-[70.,80.0,90.0,158.,184.,210.,246.,288.,330.0]>0.0001)) print *,101
    end subroutine
  end subroutine
end
use m1
use m2
use m3
call s10
call s20
call s30
print *,'pass'
end
