interface int
integer function inta(i)
real(4) ::   i
end function
end interface
type int
 real    ::  j
 real    ::  ja
end type
if (int(1.0_4).ne.10) print *,'err'
print *,'pass'
end
integer function inta(i)
real    i
inta=i*10
end function
