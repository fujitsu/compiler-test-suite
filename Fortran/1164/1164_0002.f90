if (1.eq.2) then
associate(bb=>1)
 READ(10,REC=bb) x
end associate
block
associate(bb=>1)
 READ(10,REC=bb) x
end associate
endblock
associate(bb=>1)
block
 READ(10,REC=bb) x
endblock
end associate
end if
print *,'pass'
end
