integer :: arr(5,5)

i = 2
j = 2
arr(2,2) = 10
arr(3,3) =  20

associate(aa=>arr)
  associate(bb =>aa(i+1,int(j) + 1))
i = i+1
j = j+1
 if(bb .eq. 20) then
   print*,'pass'
else
  print*,101,bb
end if
  end associate
end associate 
end
