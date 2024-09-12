integer ,target  :: ita(10),it
integer ,pointer :: ipa(:)=>ita(1:10:1)
ita=(/1,2,3,4,5,6,7,8,9,10/)
do i=1,10
if (ipa(i).ne.i) print *,'err4'
end do
print *,'pass'
end
