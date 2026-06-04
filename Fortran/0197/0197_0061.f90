module m1
interface operator(.&
xabcdefghijklmnopqrstuvwxyzabcd&
.)
 module procedure k1
end interface 
interface operator(.&
yabcdefghijklmnopqrstuvwxyzabcde&
.)
 module procedure k2
end interface 
interface operator(.&
zabcdefghijklmnopqrstuvwxyzabcdezabcdefghijklmnopqrstuvwxyzabcde&
.)
 module procedure k3
end interface 
contains
function k1(n1,n2)
intent(in)::n1,n2
k1=n1+n2
end function
function k2(n1,n2)
intent(in)::n1,n2
k2=n1+n2+1
end function
function k3(n1,n2)
intent(in)::n1,n2
k3=n1+n2+2
end function
end
print *,'pass'
end
 
