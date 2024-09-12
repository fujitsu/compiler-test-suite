integer ,target  :: ita(10,20)=reshape((/(i,i=1,200)/),(/10,20/))
integer ,pointer :: ipa(:,:)=>ita(1:10:4,2:18:7)
if (ipa(1,1).ne.  11) print *,'err1'
if (ipa(1,2).ne.  81) print *,'err2'
if (ipa(1,3).ne. 151) print *,'err3'
if (ipa(2,1).ne.  15) print *,'err1'
if (ipa(2,2).ne.  85) print *,'err2'
if (ipa(2,3).ne. 155) print *,'err3'
if (ipa(3,1).ne.  19) print *,'err1'
if (ipa(3,2).ne.  89) print *,'err2'
if (ipa(3,3).ne. 159) print *,'err3'
ipa=>ita(1:10:4,2:18:7)
if (ipa(1,1).ne.  11) print *,'err1'
if (ipa(1,2).ne.  81) print *,'err2'
if (ipa(1,3).ne. 151) print *,'err3'
if (ipa(2,1).ne.  15) print *,'err1'
if (ipa(2,2).ne.  85) print *,'err2'
if (ipa(2,3).ne. 155) print *,'err3'
if (ipa(3,1).ne.  19) print *,'err1'
if (ipa(3,2).ne.  89) print *,'err2'
if (ipa(3,3).ne. 159) print *,'err3'
print *,'pass'
end
