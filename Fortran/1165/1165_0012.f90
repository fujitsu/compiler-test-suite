character(2)::x(2)
character :: xa(1)
n=2
associate( k=> n)
  block
!2345678901234567890123456
    xa=(/((/character(k) :: 'aa'/),i=1,1)/)
  end block
end associate
print *,'pass'
end
