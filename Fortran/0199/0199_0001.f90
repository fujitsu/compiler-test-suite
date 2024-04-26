integer ,target  :: it,ita(10),ita2(10)
integer ,pointer :: ip,ipa(:)
data i , ip /1,it/
data j , ipa /1,ita/
integer ,pointer :: ipa2(:) =>ita2
it=100
ita=(/1,2,3,4,5,6,7,8,9,10/)
ita2=(/1,2,3,4,5,6,7,8,9,10/)
if (i.ne.1) print *,'err1'
if (j.ne.1) print *,'err2'
if (ip.ne.100) print *,'err3'
do i=1,10
if (ipa(i).ne.i) print *,'err4'
if (ipa2(i).ne.i) print *,'err5'
end do
print *,'pass'
end
