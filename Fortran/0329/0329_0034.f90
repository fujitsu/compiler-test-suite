module m1
 contains
 pure function fx(i) result(k)
  intent(in)::i
  k=i+1
 end function
end module

subroutine   ff(f,kk)
 interface 
  pure function f(i) result(k)
   intent(in)::i
  end function
 end interface
 integer kk(5)
 do i=1,5
  kk(i)=f(i)
 end do
end subroutine

use m1
integer kk(5)
call ff(fx,kk)
if (any(kk/=(/2,3,4,5,6/)))print *,'error'
call fff
print *,'pass'
end

subroutine fff
 use m1
 integer kk(5)
 do i=1,5
  kk(i)=fx(i)
 end do
 if (any(kk/=(/2,3,4,5,6/)))print *,'error-2'
end subroutine
