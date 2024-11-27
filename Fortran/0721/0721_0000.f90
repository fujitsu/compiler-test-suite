module mod1
contains
subroutine s()
integer,pointer:: i 
integer,pointer:: ii
external :: ii
end subroutine
end module

module mod3
contains
subroutine s()
integer,pointer:: i 
integer,pointer,external:: ii
end subroutine
end module

module mod4
contains
subroutine s()
integer,pointer:: i 
integer,external,pointer:: ii
end subroutine
end module

module mod5
contains
subroutine s()
integer,pointer:: i
external:: ii
integer,pointer:: ii
end subroutine
end module

module mod6
contains
subroutine s()
integer,pointer:: i 
integer,external:: ii
pointer:: ii
end subroutine
end module

module mod7
contains
subroutine s()
integer,pointer:: i
pointer:: ii
integer :: ii
external:: ii
end subroutine
end module

module mod8
contains
subroutine s()
integer,pointer:: i
integer :: ii
pointer:: ii
external:: ii
end subroutine
end module

module mod9
contains
subroutine s()
integer,pointer:: i
integer :: ii
external:: ii
pointer:: ii
end subroutine
end module

module mod2
contains
subroutine s()
external :: ii
integer,pointer:: i 
integer,pointer:: ii
end subroutine
end module

 use mod1
 use mod2
 use mod3
 use mod4
 use mod5
 use mod6
 use mod7
 use mod8
 use mod9
 print *,"pass"
end

