type pdt(k1,k3,k2)
 integer,kind::k2,k3,k1
 integer :: arr(k1+k2)
 character(len=k2*2-k1) :: ch(k3)
end type

integer,parameter :: aa=2
type(pdt(3,4,aa)),parameter :: src= pdt(3,4,aa)(2,'aa')
type(pdt(3,4,aa)),parameter :: mld= pdt(3,4,aa)(3,'bb')
type(pdt(3,4,aa)) :: obj(2) = transfer(src,mld,2)
 if(len(obj(2)%ch)/=obj(2)%k2*2-obj(2)%k1) print*,102
 if(size(obj(1)%arr)/=obj(1)%k1+obj(1)%k2) print*,103
 print*,'pass'
end
