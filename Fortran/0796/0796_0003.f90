module m1
implicit character(100)(p)
integer::p01
       procedure()        :: p01
       pointer        :: p01
       procedure()        :: p11
       pointer        :: p11
integer::p11
integer::p02
       pointer        :: p02
       procedure()        :: p02
       pointer        :: p12
       procedure()        :: p12
integer::p12
integer::p03
       procedure(),pointer:: p03
       procedure(),pointer:: p13
integer::p13
end
use m1
       procedure()        :: k
p01=>k
p02=>k
p03=>k
p11=>k
p12=>k
p13=>k

 write(1,*)p01() 
 write(1,*)p02() 
 write(1,*)p03() 
 write(1,*)p11() 
 write(1,*)p12() 
 write(1,*)p13() 
if (p01()/=1) print *,101
if (p02()/=1) print *,102
if (p03()/=1) print *,103
if (p11()/=1) print *,111
if (p12()/=1) print *,112
if (p13()/=1) print *,113

print *,'pass'
 end
function k()
k=1
end
