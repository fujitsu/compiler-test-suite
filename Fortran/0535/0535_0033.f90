type t
end type
class(t),allocatable::tt(:)
type(t),allocatable::ttt(:)

allocate(tt(10),ttt(10))
if(lbound(tt,1)/=1) print *,'err1'
if(lbound(ttt,1)/=1) print *,'err2'
if(ubound(tt,1)/=10) print *,'err3'
if(ubound(ttt,1)/=10) print *,'err4'
if(any(shape(tt,1)/=[10])) print *,'err5'
if(any(shape(ttt,1)/=[10])) print *,'err6'
if(size(tt,1)/=10)  print *,'err7'
if(size(ttt,1)/=10) print *,'err8'
print *,'pass'
end


