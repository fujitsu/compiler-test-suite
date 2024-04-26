integer(kind=8),target  :: rb(3,4,2,2,3) = reshape((/(i,i=1,3*4*2*2*3)/),(/3,4,2,2,3/))
type ty1
 integer(kind=8):: rb(3,4,2,2,3) = reshape((/(i,i=1,3*4*2*2*3)/),(/3,4,2,2,3/))
end type
type(ty1),target ::str
integer(kind=8),pointer  :: prb(:,:) => rb(1:2,3,2,2,2:3)
integer(kind=8),pointer  :: prb2(:,:)
integer(kind=8),pointer  :: prb3(:,:) => str%rb(1:2,3,2,2,2:3)

prb2=>rb(1:2,3,2,2,2:3)

if (prb2(1,1).ne.prb(1,1)) print *,'err'
if (prb2(2,1).ne.prb(2,1)) print *,'err'
if (prb2(1,1).ne.prb3(1,1)) print *,'err'
if (prb2(2,1).ne.prb3(2,1)) print *,'err'

if (prb2(1,2).ne.prb(1,2)) print *,'err'
if (prb2(2,2).ne.prb(2,2)) print *,'err'
if (prb2(1,2).ne.prb3(1,2)) print *,'err'
if (prb2(2,2).ne.prb3(2,2)) print *,'err'
print *,'pass'
end program
