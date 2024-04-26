subroutine x()
common /cmn/ k,kk(2)
integer a(k)
integer b(kk(2))
a=1
b=a(1)
if (b(1)/=1)print *,102
end
subroutine y()
common /cmn/ k,kk(2)
integer b(kk(2))
b=1
if (b(1)/=1)print *,202
end
subroutine z()
common /cmn/ k,kk(2)
integer a(k)
a=1
b=a(1)
if (b/=1)print *,202
end
common /cmn/ k,kk(2)
k=1
kk=1
call x()
call y()
call z()
print *,'pass'
end


