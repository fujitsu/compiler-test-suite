IMPLICIT NONE
character :: ia,ib
integer   :: iii =2
ib='a'
ia=ib
ib=ia
associate(ia=>1,ib=>iii,ic=>1+iii)
block
integer :: arr(ia),jj
integer :: brr(ib)
integer :: crr(ic)
character(ia) :: cha1
character(ib) :: cha2
character(ic) :: cha3
if (size(arr).ne.1) print *,'ng'
if (size(brr).ne.2) print *,'ng'
if (size(crr).ne.3) print *,'ng'
if (len(cha1).ne.1) print *,'ng'
if (len(cha2).ne.2) print *,'ng'
if (len(cha3).ne.3) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
print *,'pass'
end
