integer a(10)/10*2/,b(10)/10*0/
forall (i=2:9)
  where(a.eq.i) b=i
end forall
write(6,*) b
end
