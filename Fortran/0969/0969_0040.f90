print *, ' ' 
print *, 'kind(index(''a'', ''b''          )) = ', kind(index('a', 'b'))
print *, 'kind(index(''a'', ''b'', kind = 1)) = ', kind(index('a', 'b', kind = 1))
print *, 'kind(index(''a'', ''b'', kind = 2)) = ', kind(index('a', 'b', kind = 2))
print *, 'kind(index(''a'', ''b'', kind = 4)) = ', kind(index('a', 'b', kind = 4))
print *, 'kind(index(''a'', ''b'', kind = 8)) = ', kind(index('a', 'b', kind = 8))

end
