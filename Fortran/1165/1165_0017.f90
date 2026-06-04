k=2
    associate (r=>k  )
         block
integer :: c(size([character(2):: '1234'(1:r)])) ! ok
           if (size(c)/=1) print *,1001
         end block
   end associate
print *,'pass'
end
