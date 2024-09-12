subroutine s1
integer,parameter::k01=kind(real(1.2_4))
integer,parameter::k02=kind(real(1.2_8))
integer,parameter::k03=kind(real(1.2_16))
integer,parameter::k04=kind(real(1.2_4,8))
integer,parameter::k05=kind(real(1.2_8,8))
integer,parameter::k06=kind(real(1.2_16,8))
n01=kind(real(1.2_4))
n02=kind(real(1.2_8))
n03=kind(real(1.2_16))
n04=kind(real(1.2_4,8))
n05=kind(real(1.2_8,8))
n06=kind(real(1.2_16,8))
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
