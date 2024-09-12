integer ,target  :: ita(10)=(/1,2,3,4,5,6,7,8,9,10/)
integer ,pointer :: ipa(:)=>ita(1:10:2)
if (ipa(1).ne.1) print *,'err1'
if (ipa(2).ne.3) print *,'err2'
if (ipa(3).ne.5) print *,'err3'
if (ipa(4).ne.7) print *,'err4'
if (ipa(5).ne.9) print *,'err5'
print *,'pass'
end
