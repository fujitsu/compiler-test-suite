real, pointer :: a
real, target :: b = 5.0
a => b
if (a.ne.5   )print *,'err'
print *,'pass'
end
