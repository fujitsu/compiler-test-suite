module m1
integer:: a01=1
integer:: a02=2
integer:: a13=3
end
module m2
integer:: a01=11
integer:: a02=12
integer:: a23=13
end
use m1,only:a02,a13
use m2
if (any((/a01,a13,a23/)/=(/11,3,13/)))write(6,*) "NG"
print *,'pass'
end
