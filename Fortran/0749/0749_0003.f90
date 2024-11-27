module m1
integer,parameter::a(2)=reshape([1,2],[2])
end
use m1
print *,a
print *,reshape([1,2],[2])
end
