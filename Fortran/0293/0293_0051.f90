subroutine s1
parameter (n1=kind(index('123','3')))
parameter (n3=kind(selected_real_kind(3,4)))
character a
a='3'
n2=kind(index('123',a))
if (n1/=n2)print *,101,n1,n2
k=3
n4=kind(selected_real_kind(k,4))
if (n3/=n4)print *,102,n3,n4
end
call s1
print *,'pass'
end
