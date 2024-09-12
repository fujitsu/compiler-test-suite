module m1
contains
subroutine q(t,tp)
interface
 subroutine t
 end subroutine
 subroutine sub
 end subroutine
end interface
 type wt
   procedure(sub),nopass,pointer :: pp
 end type
 procedure(sub),pointer :: px
 procedure(sub),pointer :: tp
 type(wt)::wv,ww
wv=wt(t)
if (.not.associated(wv%pp,t)) print *,1
if (.not.associated(wv%pp,sub)) print *,2
px=>t
if (.not.associated(px,t)) print *,11
wv=wt(px)
if (.not.associated(wv%pp,t)) print *,111
ww%pp=>t
if (.not.associated(ww%pp,t)) print *,1111
wv=wt(ww%pp)
if (.not.associated(wv%pp,t)) print *,11111
if (.not.associated(wv%pp,sub)) print *,11112
wv=wt(tp)
if (.not.associated(wv%pp,sub)) print *,1113

end subroutine 
subroutine ss
end subroutine
end
use m1
interface
 subroutine sub
 end subroutine
end interface
 procedure(sub),pointer :: tp
tp=>sub
call q(sub,tp)
print *,'pass'
end
 subroutine sub
 end subroutine
