character,allocatable,target :: trg(:,:,:,:,:)
character,pointer::ptr(:,:,:,:,:)
integer,parameter :: p1=2,p2=8,p3=1
character::tt(p2+p1,p3:p2,p3:8,8,8)='y'

allocate(trg(p2+p1,p3:p2,p3:8,8,8))
trg = 'u'

ptr=>trg
if(is_contiguous(trg(:,1:8,:,:,:))) print*,'pass'
if(is_contiguous(trg(:,2:8,:,:,p3:))) print*,101
if(is_contiguous(trg(:p2+p1,p3:p2,p3:,p1-p3:p1*p1*p1:p3,:p2)) .neqv. .true.) print*,102
if(is_contiguous(trg(:,1:8,:,::p1,p3:))) print*,103
if(is_contiguous(ptr(:,1:8,:,:,:)) .neqv. .true.) print*,104
if(is_contiguous(ptr(:,2:8,:,:,p3:))) print*,105
if(is_contiguous(ptr(:p2+p1,p3:p2,p3:,p1-p3:p1*p1*p1:p3,:p2)) .neqv. .true.) print*,106
if(is_contiguous(ptr(:,1:8,:,::p1,p3:))) print*,107
if(is_contiguous(tt(:,1:8,:,:,:)) .neqv. .true.) print*,107      
if(is_contiguous(tt(:,2:8,:,:,p3:))) print*,108
if(is_contiguous(tt(:p2+p1,p3:p2,p3:,p1-p3:p1*p1*p1:p3,:p2)) .neqv. .true.) print*,109
if(is_contiguous(tt(:,1:8,:,::p1,p3:))) print*,110

end
