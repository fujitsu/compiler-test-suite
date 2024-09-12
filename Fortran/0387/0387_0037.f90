procedure(idim),pointer :: pip
procedure(abs),pointer  :: pap

integer i
real    r

pip=>idim
pap=>abs

pip=>pip
pap=>pap

i = pip(1,2)
r = pap(r)

print *,'pass'

end
