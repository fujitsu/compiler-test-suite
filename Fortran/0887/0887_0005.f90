integer :: arr(4)
do concurrent (i=1:5)
associate (a=>i)
forall( a=1:10,arr(a)==0)
end forall
end associate
end do
end
