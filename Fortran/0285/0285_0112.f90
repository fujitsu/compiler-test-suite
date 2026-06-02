CHARACTER(4) :: HA(5),iom=' '
character(len=11)::filename='HA066.DATA0002'

NAMELIST/NAMEH/HA
HA='pass'

associate(aa=>filename,bb=>1,cc=>iom)
 OPEN(1,FILE=aa)
write(1,*) "&NAMEH HA=2*'ABCDTECHNOLOGIES LIMITED' /"
rewind 1
 READ(bb,NML=NAMEH)

 close(1,iomsg=cc,status='delete')
 print*,HA,cc
end associate
end
