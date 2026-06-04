subroutine s1
       type z
          integer(8)::z1
       end type
          class(z),allocatable::name
       name=z(11)
       name=z(11)
       if (name%z1/=11) print *,2828
end
recursive subroutine s2(k)
  integer::a(1000)
  a=k
  call s21(a)
end
subroutine s21(a)
  integer::a(*   )
 write(1001,*)a(1:1000)
end
integer::k=-1
call s2(k)
call s1()


     print *,'sngg709r : pass'
     end 

