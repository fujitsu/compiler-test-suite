subroutine sub_complex(i)
implicit none
integer i(:,:)
complex c
       character*(*) ch3
i = i + 1
return
entry ent_complex(c, ch3)
c = c + (3. , 4.)
if (len(ch3) .ne. 3) stop 'ch3-1'
if (ch3.ne.'XYZ') stop 'ch3-2'
end
