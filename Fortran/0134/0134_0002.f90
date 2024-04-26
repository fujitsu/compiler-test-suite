 character a,b,c
 character(*),parameter::x01(1)=[character(len(a))::'123456789']
 character(*),parameter::x02(1)=[character(len(b))::'123456789']
if (x01(1)/='1')print *,x01(1)
if (x01(1)/='1')print *,x02(1)
print *,'pass'
 end

