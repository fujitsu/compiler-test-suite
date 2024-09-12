complex, parameter :: cmp = (3.0,1.5)
associate (a=>cmp)
if (a == (3.0,1.5)) print *,'PASS'
end associate
end
