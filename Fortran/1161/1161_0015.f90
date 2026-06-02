!IMPLICIT NONE
associate (isrc =>1_1)
 block
 integer ::pp
 pp=kind(isrc)
 if (pp.ne.1)  print *,'ng :',pp
 end block
end associate
print *,'pass'
end
