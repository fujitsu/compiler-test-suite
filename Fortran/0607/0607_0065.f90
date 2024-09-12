DATA i, j / B'1011', Z'B' /
associate(a=>i,b=>j)
if ((a .eq. 11) .AND. (b .eq. 11))print *,'PASS'
end associate
END
