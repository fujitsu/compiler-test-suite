call s1
print *,'pass'
end
subroutine s1
character(:),allocatable::ch1
integer,allocatable::a(:)
ch1 = 'ab'
ch1 = 'abc'
a=[1]
a = [(i,i=1,10)]
associate(p=>(a),pc=>ch1)
if(len(pc)/=3) print *,'err1'
if(size(p)/=10) print *,'err2'
end associate
ch1 = '123'
ch1 = '1'
a= [1,2,3]
a= [(i,i=1,10)]
associate(p=>a,pc=>ch1)
if(len(pc)/=1) print *,'err3'
if(size(p)/=10) print *,'err4'
end associate
end
