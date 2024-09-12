subroutine z1
procedure (sin),pointer::p
call s(sin)
p=>sin
if (abs(p(.1)-9.9833421E-02)>0.1)print *,'error-1'
if (abs(sin(.1)-9.9833421E-02)>0.1)print *,'error-2'
end
subroutine s(x)
if (abs(x(.1)-9.9833421E-02)>0.1)print *,'error-3'
end
subroutine z2
procedure (sin),pointer::p
call s(sin)
end
subroutine z3
procedure (sin),pointer::p
p=>sin
if (abs(p(.1)-9.9833421E-02)>0.1)print *,'error-4'
if (abs(sin(.1)-9.9833421E-02)>0.1)print *,'error-5'
end
call z1
call z2
call z3
print *,'pass'
end

