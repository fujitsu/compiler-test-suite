integer(8),parameter::i81=3_8**3_1
integer(8),parameter::i82=3_8**3_2
integer(8),parameter::i83=3_8**3_4
integer(8),parameter::i84=3_8**3_8
if (i81/=27)print *,101,i81
if (i82/=27)print *,102,i82
if (i83/=27)print *,103,i83
if (i84/=27)print *,104,i84
print *,'pass'
end
