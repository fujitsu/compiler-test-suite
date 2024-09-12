type pdt(k1,k3,k2)
integer,kind::k2,k3,k1
integer :: arr(k1+k2)
character(len=k2*2-k1) :: ch(k3)
end type
 
integer,parameter :: aa=2
integer::ii
type(pdt(3,4,aa)),parameter :: src(2,2)=reshape([pdt(3,4,aa)(2,'pdt'),pdt(3,4,aa)(2,'pdt'),&
                                        pdt(3,4,aa)(1,'cdt'),pdt(3,4,aa)(1,'cdt')],[2,2])
 
type(pdt(3,4,aa)) :: obj(2,2) = cshift(src,shift=-1,dim=1)
do ii=1,2
  if(len(obj(ii,2)%ch)/=obj(ii,2)%k2*2-obj(ii,2)%k1) print*,102
  if(size(obj(ii,2)%arr)/=obj(ii,2)%k1+obj(ii,2)%k2) print*,103
  if(any(obj(ii,2)%arr/=1)) print*,104,ii
  if(any(obj(ii,2)%ch/='c')) print*,105,ii
  if(any(obj(ii,1)%arr/=2)) print*,104,ii
  if(any(obj(ii,1)%ch/='p')) print*,105,ii
end do
 
 print*,'pass'
end
