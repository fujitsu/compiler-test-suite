module m1
 contains
  function f1(a)
       type(*),optional::a
       integer::f1
       if(present(a) .neqv. .true.)print*,'101'
       f1=rank(a)
  end function
end module m1

module m2
 use m1
end module m2

module m3
 use m2
end module m3


use m3
 
integer::ii
ii=f1(3)
if(ii /=0) print*,'102'

print*,"pass"
end 
