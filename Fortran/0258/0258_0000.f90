logical :: x
x=parity((/.TRUE.,.FALSE.,.TRUE./));
if(x.neqv..FALSE.)print*,101
print*,"pass"
end
