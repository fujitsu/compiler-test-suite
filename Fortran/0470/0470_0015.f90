integer    ,target :: t(3,2)=reshape((/1,2,3,4,5,6/),(/3,2/))
integer    ,pointer :: p(:,:)=>t
p=>t
if (p(1,1).ne.1) print *,'err1'
if (p(2,1).ne.2) print *,'err2'
if (p(3,1).ne.3) print *,'err3'
if (p(1,2).ne.4) print *,'err4'
if (p(2,2).ne.5) print *,'err5'
if (p(3,2).ne.6) print *,'err6'
print *,'pass'
end
