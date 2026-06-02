integer(8)::en=-8        ! 4)
namelist/enm/en
call s
call chk
print *,'sngg274n : pass'
contains
   subroutine s()
integer(8)::en=8        ! 4)
if (en/=8)print *,9001
write(1,enm)
  end subroutine
subroutine chk
namelist /enm/ en
rewind 1
read(1,enm)
if (en/=-8) print *,1015,en
end
end 
