integer::a
forall (integer*4::ii=1:5)
  forall (integer(kind=8)::ii=1:5)
        a=ii+1
  end forall
end forall

print*,a
end 
