module m1
 type a1
  integer::av0
 end type
 type a2
  type (a1)::av4(2)
 end type
 type (a2)::av
contains
  subroutine x2(av4)
  type (a1)::av4
 if (av4%av0/=10)print *,'error-5'
  end subroutine
end
use m1
 av%av4=(/a1(9),a1(10)/)
 call x2((av%av4(2)))
print *,'pass'
end
