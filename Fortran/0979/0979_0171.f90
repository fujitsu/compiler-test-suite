integer ,parameter :: ii=kind(int(Z"1"))
data i /ii/
if (i.ne.4) write(6,*) "NG"
if (kind(int(Z"1")).ne.4) write(6,*) "NG"

print *,"pass"
end
