subroutine s1
integer,parameter::i1=selected_char_kind('default')
integer,parameter::i2=selected_char_kind('ascii')
integer,parameter::i3=selected_char_kind('ascii ')
integer,parameter::i4=selected_char_kind('Default ')
integer,parameter::i5=selected_char_kind('ISO_10646')
integer,parameter::i6=kind(selected_char_kind('ISO_10646'))
if (i1/=1)print *,101
if (i2/=1)print *,102
if (i3/=1)print *,103
if (i4/=1 )print *,104
if (i5/=-1 .and. i5/=4)print *,105
if (i6/=4)print *,106
k1=selected_char_kind('default')
k2=selected_char_kind('ascii')
k3=selected_char_kind('ascii ')
k4=selected_char_kind('Default ')
k5=selected_char_kind('ISO_10646')
k6=kind(selected_char_kind('ISO_10646'))
if (k1/=1)print *,201
if (k2/=1)print *,202
if (k3/=1)print *,203
if (k4/=1)print *,204
if (k5/=-1 .and. k5/=4)print *,205
if (k6/=4)print *,206
end
call s1
print *,'pass'
end
