type pdt(k1,k3,k2)
 integer,kind::k2,k3,k1
 integer :: arr(k1+k2)
 character(len=k3*2-k1) :: ch(k3)
end type

 integer,parameter :: aa=2
 type(pdt(3,4,aa)),parameter :: src(4,5)=pdt(3,4,aa)(2,'pdt')
 type(pdt(3,4,aa)) :: obj(5,4) = transpose(src)
 if(len(obj(2,4)%ch)/=obj(2,4)%k3*2-obj(2,4)%k1) print*,102
 if(size(obj(2,4)%arr)/=obj(2,4)%k1+obj(2,4)%k2) print*,103
 if(any(obj(2,4)%arr/=2)) print*,104
 if(any(obj(2,4)%ch/='pdt')) print*,105,obj(2,4)%ch
 print*,'pass'
end
