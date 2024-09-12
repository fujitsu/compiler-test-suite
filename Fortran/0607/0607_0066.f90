DATA i, j / B'1011', Z'C' /
associate(a=>i)
 associate(a=>j)
  if (a .eq. 12) print *,'PASS'
 end associate
end associate
END
