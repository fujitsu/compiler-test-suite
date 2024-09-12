character(:),pointer::p
character(2),pointer::p2
character(3),pointer::p3
p=>null(p3)
if (len(p)/=3)print *,'error-1'
if (associated(p))print *,'error-2'
p=>null(p2)
if (len(p)/=2)print *,'error-3'
if (associated(p))print *,'error-4'
p=>null()
if (associated(p))print *,'error-4'
print *,'pass'
end
