subroutine sub_complex(i)
implicit none
integer i(:,:)
complex c
i = i + 1
return
entry ent_complex(c)
c = c + (3. , 4.)
end
