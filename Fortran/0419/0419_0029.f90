integer,allocatable::i1(:),i2
i1=[1]
i2=i1(1)
if(any(i1/=[1])) print *,'err1'
if(i2/=1) print *,'err2'
print *,'pass'
end
