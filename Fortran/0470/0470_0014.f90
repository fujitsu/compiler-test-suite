integer    ,target :: t(3)=(/1,2,3/)
integer    ,pointer :: p(:)=>t
p=>t
if (p(1).ne.1) print *,'err'
if (p(2).ne.2) print *,'err'
if (p(3).ne.3) print *,'err'
print *,'pass'
end
