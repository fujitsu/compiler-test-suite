real(2)::a2=1
real(4)::a4=1
complex(2)::c2=(1,0)
complex(4)::c4=(1,0)
if (a2) 11,11,12
12 continue
if (a4) 21,21,22
22 continue
if (c2%re) 31,31,32
32 continue
if (c4%re) 41,41,42
41 continue
print *,41
goto 42
11 continue
print *,11
goto 42
21 continue
print *,21
goto 42
31 continue
print *,31
goto 42
42 continue
print *,'pass'
end
