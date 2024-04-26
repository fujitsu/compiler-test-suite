integer::x(5) =[1,2,3,4,5]
integer::y(7) =[1,2,3,4,5,6,7]
integer::z(5) =[1,2,3,4,5]
integer::p(5) =[1,2,3,4,5]
integer::k=1
integer::l=2
integer::q(5)
q = fun1(x(1:5:1),y(1:7:k),z(1:5:2), p(1:5:l))
if(any(q/= [11,12,13,14,15]))print*,"201"
if(any(x /= [11,12,13,14,15]))print*,"201"
if(any(y/= [21,22,23,24,25,26,27]))print*,"202"
if(any(z/= [31,2,33,4,35]))print*,"203"
if(any(p/= [41,2,43,4,45]))print*,"205"
print*,"pass"
contains
function  fun1(a,b,c,d)
integer::a(5)
integer::b(7)
integer::c(3)
integer::d(3)
integer::fun1(5)
if(loc(a).ne.loc(x))print*,"101"
if(loc(y).ne.loc(b))print*,"102"
if(loc(z).eq.loc(c))print*,"103"
if(loc(p).eq.loc(d))print*,"103"
a =a +10
b =b+ 20
c= c+ 30
d = d+40
fun1 = a
end function
end
