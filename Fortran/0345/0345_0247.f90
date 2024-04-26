interface operator (.add.)
  function add_func(i1,i2) result(i3)
    intent(in)::i1,i2
  end function add_func
end interface operator (.add.)

i=1
j=10
k=100

l=i.add.j
print '(3hl= ,i4)',l
m=k.add.l
print '(3hm= ,i4)',m

end

function add_func(i1,i2) result(i3)
  intent(in)::i1,i2
  i3=i1+i2
end function add_func

