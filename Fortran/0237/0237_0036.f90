subroutine s11
real,parameter::i1(1)=sum([0,0,0])
real,parameter::i2(1)=sum([0,0,0],1)
if (any(i1/=0)) print *,101
if (any(i2/=0)) print *,102
end

subroutine s12
character(*,1),parameter::i1(1)*1=maxval(["1","2","1"])
character(*,1),parameter::i2(1)*1=maxval(["1","2","1"],1)
if (any(i1/='2')) print *,201
if (any(i2/='2')) print *,202
end

subroutine s13
integer,parameter::i1(1)=maxloc(["1","2","1"])
integer,parameter::i2(1)=maxloc(["1","2","1"],1)
if (any(i1/=2)) print *,301
if (any(i2/=2)) print *,301
end

call s11
call s12
call s13
print *,'pass'
end


