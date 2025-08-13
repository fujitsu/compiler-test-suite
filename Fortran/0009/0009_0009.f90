module const
 implicit none
 real(8):: value
end

module mods
 implicit none
contains
 subroutine init
 use const,only:value
 implicit none
value = 2
  call rs
end subroutine
end

subroutine rs
 use const
 implicit none
write(12,*) value
end 

use mods,only: init
call init
call chk
print *,'OK'
end

subroutine chk
rewind 12
read(12,*) a
if (a/=2) print *,102
end
