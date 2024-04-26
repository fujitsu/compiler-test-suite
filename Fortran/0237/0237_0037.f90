subroutine s1
integer,parameter::i1(3)=product(reshape([1,2,3,4,5,6],[2,3]),dim=1)
integer,parameter::i2(3)=product(reshape([1,2,3,4,5,6],[2,3]),1)
integer,parameter::i3=product(reshape([1,2,3,4,5,6],[2,3]),.true.)
if (any(i1/=[2,12,30])) print *,101
if (any(i2/=[2,12,30])) print *,102
if (   (i3/=720)     ) print *,103
end


subroutine s2
integer,parameter::i1(1)=minloc([1,2],mask=.true._1)
integer,parameter::i2(1)=minloc([1,2],[.true.,.false.])
if (any(i1/=1)) print *,201
if (any(i2/=1)) print *,202
end


call s1
call s2
print *,'pass'
end



