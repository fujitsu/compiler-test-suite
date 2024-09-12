associate(a=>3, b=>a, c=>b)
 associate (b=>4)
  if ((b .eq. 4) .AND. (c .eq. 3)) print *,'PASS'
 end associate
end associate
end
