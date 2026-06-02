print *,'pass'

end

subroutine sub1(a1)
 interface
  subroutine osub1(i)
   integer,          dimension(:), volatile     :: i
  end subroutine
  subroutine osub2(i)
   integer,          dimension(:), asynchronous :: i
  end subroutine
  subroutine osub3(i)
   integer, pointer, dimension(:), volatile     :: i
  end subroutine
  subroutine osub4(i)
   integer, pointer, dimension(:), asynchronous :: i
  end subroutine
 end interface
 integer,          dimension(:) :: a1
 integer, target,  dimension(5) :: a2
 integer, pointer, dimension(:) :: a3

 a3 => a2

 call osub1(a1)
 call osub1(a2(1:5:1))
 call osub1(a3)

 call osub2(a1)
 call osub2(a2(1:5:1))
 call osub2(a3)

 call osub3(a3)
 call osub4(a3)

end

subroutine osub1(i)
 integer,          dimension(:), volatile     :: i
 if (kind(i).ne.kind(i)) print *,'error'
end subroutine
subroutine osub2(i)
 integer,          dimension(:), asynchronous :: i
 if (kind(i).ne.kind(i)) print *,'error'
end subroutine
subroutine osub3(i)
 integer, pointer, dimension(:), volatile     :: i
 if (kind(i).ne.kind(i)) print *,'error'
end subroutine
subroutine osub4(i)
 integer, pointer, dimension(:), asynchronous :: i
 if (kind(i).ne.kind(i)) print *,'error'
end subroutine
