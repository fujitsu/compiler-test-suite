subroutine s1(n)
   integer,save ::k
   integer      ::m
   if (n==1) then 
   else 
   end if
   block
      integer,save ::kk
      integer    :: mm
      if (n==1) then 
        write(1,*)k
        write(1,*)m
        write(1,*)kk
        write(1,*)mm
      else 
        if (k/=3) print *,101
        if (m/=3) write(1,*)111
        if (kk/=4) print *,104
        if (mm/=4) write(1,*)114
      end if
      kk=4
      mm=4
   end block
   k=3
   m=3
end
call s1(1)
call s1(2)
print *,'pass'
end


