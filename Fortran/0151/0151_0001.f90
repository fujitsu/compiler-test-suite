module m1
integer(8):: b(10)
contains
subroutine s1 ()
block
  integer       :: k2
  block
   b(1)=loc(k2)
  end block
end block
end subroutine
end
print *,'pass'
end


