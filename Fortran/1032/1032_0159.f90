module m1
 type a1
  integer::av0
 end type
 type a2
  integer  ::av1(2)
  complex  ::av2(2)
  character*2::av3(2)
  type (a1)::av4(2)
 end type
 type (a2)::av
contains
  subroutine x1(av1,av2,av3,av4)
  integer  ::av1(2)
  complex  ::av2(2)
  character(*)::av3(2)
  type (a1)::av4(2)
 if (any(av1/=(/11,12/)))print *,'error-1'
 if (any(abs(av2-(/(21,22),(23,24)/))>0.0001))print *,'error-2'
 if (any(av3/=(/'56','78'/)))print *,'error-3'
 if (av4(1)%av0/=9)print *,'error-4'
 if (av4(2)%av0/=10)print *,'error-5'
  end subroutine
  subroutine x2(av1,av2,av3,av4)
  integer  ::av1
  complex  ::av2
  character(*)::av3
  type (a1)::av4
 if ((av1/=12))print *,'error-1'
 if ((abs(av2-(23,24))>0.0001))print *,'error-2'
 if ((av3/='78'))print *,'error-3'
 if (av4%av0/=10)print *,'error-5'
  end subroutine
end
use m1
 logical::t(2)
 t=(/.false.,.true./)
 av%av1=(/11,12/)
 av%av2=(/(21,22),(23,24)/)
 av%av3=(/'56','78'/)
 av%av4=(/a1(9),a1(10)/)
k=1
 call x1(merge(av%av1,av%av1,t),merge(av%av2,av%av2,t),merge(av%av3,av%av3,t),merge(av%av4,av%av4,t))
 call x1(merge(av%av1(::k),av%av1(::k),t),merge(av%av2(::k),av%av2(::k),t),merge(av%av3(::k),av%av3(::k),t),merge(av%av4(::k),av%av4(::k),t))
 call x2(merge(av%av1(2),av%av1(2),t(2)),merge(av%av2(2),av%av2(2),t(2)),merge(av%av3(2),av%av3(2),t(2)),merge(av%av4(2),av%av4(2),t(2)))
print *,'pass'
end
