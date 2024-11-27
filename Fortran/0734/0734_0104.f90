integer H
write(1,*)    MAX(&
    (/1/),&
    RESHAPE((/ H() /),(/1 /)))
print *,'pass'
END 

INTEGER FUNCTION H()
H=4
end
