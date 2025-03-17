subroutine sub(x)
character x*(*)
character*80:: y(3)=(/'abcdef','123456','tsysus'/)
logical t,tt(3)
i=1
tt=y==transfer(x,x)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-1'
tt=.false.
tt=y==repeat(x,i)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-2'
tt=.false.
tt=y==trim(x)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-3'
tt=.false.
t=any(y==trim(x))
if (.not.t)print *,'error-4'
i=10
t=any(y==trim(x(1:i)))
if (.not.t)print *,'error-5'
end
subroutine sub2(x)
character x*(80)
character*80:: y(3)=(/'abcdef','123456','tsysus'/)
logical t,tt(3)
i=1
tt=y==transfer(x,x)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-1'
tt=.false.
tt=y==repeat(x,i)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-2'
tt=.false.
tt=y==trim(x)
if (any(tt.neqv.(/.false.,.true.,.false./)))print *,'error-3'
tt=.false.
t=any(y==trim(x))
if (.not.t)print *,'error-4'
i=10
t=any(y==trim(x(1:i)))
if (.not.t)print *,'error-5'
end
character*80:: x='123456'
call sub(x)
call sub2(x)
print *,'pass'
end
