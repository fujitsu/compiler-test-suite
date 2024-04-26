subroutine s11
parameter(k1=selected_char_kind('default'), &
k2=selected_char_kind('ascii'), &
k3=selected_char_kind('ISO_10646'))

n1=selected_char_kind('default')
n2=selected_char_kind('ascii')
n3=selected_char_kind('ISO_10646')
if (k1/=1) print *,101,k1
if (k2/=1) print *,102,k2
if (k3/=-1) print *,103,k3
if (n1/=1) print *,104,n1
if (n2/=1) print *,105,n2
if (n3/=-1) print *,106,n3

end
call s11
print *,'pass'
end
