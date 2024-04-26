real(kind=8),target  :: rb(4,2,2) = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0/),(/4,2,2/))
type ty1
 real(kind=8):: rb(4,2,2) = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0/),(/4,2,2/))
end type
type(ty1),target ::str
real(kind=8),pointer  :: prb(:) => rb(2,1:2,2)
real(kind=8),pointer  :: prb2(:)
real(kind=8),pointer  :: prb3(:) => str%rb(2,1:2,2)

prb2=>rb(2,1:2,2)

if (prb2(1).ne.prb(1)) print *,'err'
if (prb2(2).ne.prb(2)) print *,'err'
if (prb2(1).ne.prb3(1)) print *,'err'
if (prb2(2).ne.prb3(2)) print *,'err'
print *,'pass'
end program
