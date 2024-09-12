procedure(integer),pointer :: ip => null()
integer,external :: ifun
ip=>ifun
print *,"pass"
end
integer function ifun()
ifun=1
end
