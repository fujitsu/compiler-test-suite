CHARACTER(4) HA(5)
character(len=11)::filename='HA004.DATA0001'

NAMELIST/NAMEH/HA
HA='fire'

associate(aa=>filename)
 OPEN(1,FILE=aa)
end associate

write(1,*) "&NAMEH HA=2*'ABCDTECHNOLOGIES LIMITED' /"
rewind 1
READ(1,NML=NAMEH)
close(1,status='delete')
print*,HA
end
