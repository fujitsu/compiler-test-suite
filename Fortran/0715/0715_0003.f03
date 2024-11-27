print *,'pass'
end
subroutine sub1(i)
value :: i
character(*) :: i
end
subroutine sub2(i)
character(*) :: i
value :: i
end
subroutine sub3(i)
character(*),value :: i
end
subroutine sub4(i,k)
value :: i
character(k) :: i
end
subroutine sub5(i,k)
character(k) :: i
value :: i
end
subroutine sub6(i,k)
character(k),value :: i
end
