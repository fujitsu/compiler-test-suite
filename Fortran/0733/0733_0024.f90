 integer ::a(5)=1,b(5)=2,c(5)=3,d(5)=-1
 where (a==(/1,0,1,0,1/))
   d=b+ix(c)
 end where
 if (any(d/=(/5,-1,5,-1,5/)))print *,'error1'
 print *,'pass'
 contains
  elemental function ix(j)
  intent(in)::j
  ix=j
  end function
end
