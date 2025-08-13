module const
 implicit none
 real(8):: value
end

module mods
 use const
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
write(2,*) value
end 

use mods,only: init
call init
call chk
print *,'OK'
end

subroutine chk
rewind 2
read(2,*) a
if (a/=2) print *,102
end
