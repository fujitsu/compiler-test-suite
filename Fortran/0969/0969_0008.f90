subroutine s1
 n03=kind(aint(1.2_16))
 n06=kind(aint(1.2_16,8))
 print *,'No kind:'
 print *,n01,n02,n03
 print *,k01,k02,k03
 print *,'kind(8) is specified:'
 print *,n04,n05,n06
 print *,k04,k05,k06
 if (n01/=k01)print *,101
 if (n02/=k02)print *,102
 if (n03/=k03)print *,103
 if (n04/=k04)print *,104
 if (n05/=k05)print *,105
 if (n06/=k06)print *,106
end

call s1
print *,'pass'
end
