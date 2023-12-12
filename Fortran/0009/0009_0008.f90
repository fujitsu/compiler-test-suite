module const
 implicit none
 real(8):: value
end

module mods
 use const,only:value
 implicit none
contains
 subroutine init
 implicit none
value = 2
  call rs
end subroutine
end

subroutine rs
 use const
 implicit none
write(1,*) value
end 

use mods,only: init
call init
call chk
print *,'OK'
end

subroutine chk
rewind 1
read(1,*) a
if (a/=2) print *,102
end

