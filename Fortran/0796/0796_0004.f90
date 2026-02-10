module m1
implicit integer(p)
integer::p01
       procedure()        :: p01
       pointer        :: p01
       procedure(integer)        :: p11
       pointer        :: p11
       pointer        :: p02
       procedure(integer)        :: p02
       pointer        :: p12
       procedure(integer)        :: p12
       procedure(integer),pointer:: p03
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

 write(3,*)p01() 
 write(3,*)p02() 
 write(3,*)p03() 
 write(3,*)p11() 
 write(3,*)p12() 
 write(3,*)p13() 
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
