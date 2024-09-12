DATA x, i, j / 4.89, B'1011', Z'B' /
associate(a=>x,b=>i,c=>j)
 if ((a .eq. 4.89) .AND. (b .eq. 11) .AND. (c .eq. 11))print *,'PASS'
end associate
END
