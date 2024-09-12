character, parameter :: ch ='a'
associate (a=>ch)
if (a .EQ. 'a') print *,'PASS'
end associate
end
