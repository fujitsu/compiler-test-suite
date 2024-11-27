subroutine s1(n)
   integer,save ::k
   integer    :: m
   block
      integer,save ::kk
      integer    :: mm
      if (n==1) then 
        write(1,*)k
        write(1,*)m
        write(1,*)kk
        write(1,*)mm
      else 
      end if
      kk=4
      mm=4
      k=4
      m=4
   end block
end
call s1(1)
call s1(2)
print *,'pass'
end


