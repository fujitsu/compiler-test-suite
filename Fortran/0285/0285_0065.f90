CHARACTER(4) HA(5)
character(len=11)::filename='HA066.DATA123'

NAMELIST/NAMEH/HA
HA='pass'

associate(aa=>filename,bb=>1)
 OPEN(1,FILE=aa)
write(1,*) "&NAMEH HA=2*'ABCDTECHNOLOGIES LIMITED' /"
rewind bb
 READ(bb,NML=NAMEH)
end associate

close(1,status='delete')
print*,HA
end
