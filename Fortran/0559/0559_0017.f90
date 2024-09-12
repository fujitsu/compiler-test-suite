type pdt(k1,k3,k2)
 integer,kind::k2,k3,k1
 integer :: arr(k1+k2)
 character(len=k2*2-k1) :: ch(k3)
end type

integer,parameter :: aa=2
type(pdt(3,4,aa)),parameter :: src= pdt(3,4,aa)(2,'aa')
type(pdt(3,4,aa)),parameter :: mld= pdt(3,4,aa)(3,'bb')
type(pdt(3,4,aa)) :: obj = transfer(src,mld)
 if(len(obj%ch)/=obj%k2*2-obj%k1) print*,102
 if(size(obj%arr)/=obj%k1+obj%k2) print*,103
 print*,'pass'
end
