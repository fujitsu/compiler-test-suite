subroutine s1()
   integer,save ::k
   block
      integer,save ::kk
        kd=k
        kd=kk
      kk=4
      k=4
   end block
end
call s1()
print *,'pass'
end


