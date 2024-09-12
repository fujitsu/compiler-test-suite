procedure(integer),pointer :: ip
integer,external,  pointer :: pp
integer,external :: ifun
pp=>ifun
ip=>ifun
print *,'pass'
end
function ifun()
ifun=1
end

