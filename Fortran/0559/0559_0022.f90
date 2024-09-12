type pdt(k1,k3,k2)
 integer,kind::k2,k3,k1
 integer :: arr(k1+k2)
 character(len=k2*2-k1) :: ch(k3)
end type

integer,parameter :: aa=2
type(pdt(3,4,aa)),parameter :: src(3)=[pdt(3,4,aa)(1,'cdt'),pdt(3,4,aa)(1,'pdt'),pdt(3,4,aa)(1,'rdt')]
logical,parameter :: mm(2,1) = .true.

type(pdt(3,4,aa)) :: obj(2,1) = unpack(src,mm,field=pdt(3,4,aa)(0,'xdt'))
if(all(obj%arr(1).ne.1)) print*,101
if((obj(2,1)%ch(1).ne.'p')) print*,102 
 print*,'pass'
end
