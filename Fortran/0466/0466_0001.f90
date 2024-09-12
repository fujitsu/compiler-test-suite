function f4( x,y ) bind(c)
logical(8):: x,y,f4
value:: y
f4=x.or.y
end
print *,'pass'
end
