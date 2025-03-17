write(1,'(a)') "&FE fenml(3)%elgeom_name = 'HEX' /"
rewind 1
call sub
PRint *,'pass'
end
subroutine sub
TYPE fenml_type
   CHARACTER(LEN=20) ::elgeom_name='XXX'
END TYPE fenml_type
TYPE(fenml_type), DIMENSION(5) :: fenml
NAMELIST /FE/fenml
read (1,FE)
if (any(fenml%elgeom_name/=(/'XXX','XXX','HEX','XXX','XXX'/))) &
  print *,fenml%elgeom_name
end 
