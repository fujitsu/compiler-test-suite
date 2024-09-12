intrinsic index
procedure(index),pointer :: pindex
character(len=10)::c1
character(len=1) ::c2
c1='0123456789'
c2='1'
pindex=>index

i=pindex(c1,c2)

print *,'pass'

end
