integer,pointer::n2
common /cmn/ n2
dimension n2(:)
allocate(n2(2))
n2=1
print *,'pass'
end
