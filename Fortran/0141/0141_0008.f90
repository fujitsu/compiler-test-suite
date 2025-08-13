module m0
integer                         :: wa
integer                         :: wb
integer                         :: wc
integer                         :: wd
integer                         :: we
integer                         :: wf
namelist /nama/wa,wb,wc,wd,we,wf
end
module m1
use m0,ea=>wa,eb=>wb,ec=>wc,ed=>wd,ee=>we,ef=>wf
contains
subroutine ss_set1
ea=101
eb=102
ec=103
ed=104
ee=105
ef=106
end subroutine
subroutine ss_1
write(11,nama)
end subroutine
end
subroutine chk
use m0,ea=>wa,eb=>wb,ec=>wc,ed=>wd,ee=>we,ef=>wf
ea=0
eb=0
ec=0
ed=0
ee=0
ef=0
rewind 11
read(11,nama)
if (ea/=101)print *,'error-1'
if (eb/=102)print *,'error-2'
if (ec/=103)print *,'error-3'
if (ed/=104)print *,'error-4'
if (ee/=105)print *,'error-5'
if (ef/=106)print *,'error-6'
end
use m1
call ss_set1
call ss_1
call chk
print *,'pass'
end
