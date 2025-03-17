character(len=5)::cc
logical l,ll
ll=.false.
l=.true.
if(merge(aa(5),bb(5),l).ne.'abcde') print *,'err1'
if(merge(aa(5),cc('zzzzz'),ll).ne.'fghij') print *,'err1'
if(len(merge(aa(5),bb(5),.true.)).ne.5) print *,'err2'
print *,'pass'
contains
function aa(i) result(res)
character(len=i)::res
character(len=1)::ch1
character(len=4)::ch2
ch1='a'
ch2='bcde'
res=ch1//ch2
end function
function bb(i) result(res)
character(len=i)::res
character(len=4)::ch3
character(len=1)::ch4
ch3='fghi'
ch4='j'
res=ch3//ch4
end function
end
function cc(c) result(res)
character(len=*)::c
character(len=5)::res
character(len=4)::ch3
character(len=1)::ch4
ch3='fghi'
ch4='j'
res=ch3//ch4
end function
