subroutine s1()
   block
      integer,save ::kk
        k=kk
      kk=4
   end block
end
call s1()
print *,'pass'
end


