module m1
 type x0
   integer::x01
 end type
end
module m2
 use m1,y0=>x0
 type x0
    character::x01
 end type
 type z
   type (y0):: z1
   type (x0):: z2
 end type
end
use m2
 type (z):: p=z( y0(1),x0('a'))
 type (z):: pp=z( z2=x0('a'),z1=y0(1))
 type (z):: v,vv
v= z( y0(1),x0('a'))
 vv=z( z2=x0('a'),z1=y0(1))
if (p%z1%x01/=1)print *,101
if (p%z2%x01/='a')print *,102
if (v%z1%x01/=1)print *,103
if (v%z2%x01/='a')print *,104
if (pp%z1%x01/=1)print *,101
if (pp%z2%x01/='a')print *,102
if (vv%z1%x01/=1)print *,103
if (vv%z2%x01/='a')print *,104
print *,'pass'
end
