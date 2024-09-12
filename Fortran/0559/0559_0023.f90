type pdt(k1,k3,k2)
 integer,kind::k2,k3,k1
 integer :: arr(k1+k2)
 character(len=k2*2-k1) :: ch(k3)
end type

integer,parameter :: aa=2
type(pdt(3,4,aa)),parameter :: src(3)=[pdt(3,4,aa)(1,'cdt'),pdt(3,4,aa)(2,'pdt'),pdt(3,4,aa)(3,'rdt')]
type(pdt(3,4,aa)) :: cc(3,3) = spread(src,1,3)

 do ii=1,3
  if(len(cc(ii,1)%ch)/=cc(ii,2)%k2*2-cc(ii,2)%k1) print*,102
  if(size(cc(ii,1)%arr)/=cc(ii,2)%k1+cc(ii,2)%k2) print*,103
  if(any(cc(ii,1)%arr/=1)) print*,104
  if(any(cc(ii,2)%arr/=2)) print*,108
  if(any(cc(ii,3)%arr/=3)) print*,109
  if(any(cc(ii,1)%ch/='c')) print*,105,cc(ii,1)%ch
  if(any(cc(ii,2)%ch/='p')) print*,106,cc(ii,2)%ch
  if(any(cc(ii,3)%ch/='r')) print*,107,cc(ii,3)%ch
 end do

 print*,'pass'
end
