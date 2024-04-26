interface
subroutine sub1(dmy2)
integer::dmy2(2)
end subroutine sub1
subroutine sub2(dmy1)
integer::dmy1(2)
end subroutine sub2
end interface
integer::aa(3)
integer::k =2
aa = reshape([1,2,3],[3])
call sub1(aa(1:3:k))
if(any(aa /=reshape([30,2,30],[3])))print*,"101",aa
print*,"pass"
end
subroutine sub1(dmy2)
integer::dmy2(2)
 dmy2 = 20
call sub2(dmy2)
end subroutine sub1
subroutine sub2(dmy1)
integer::dmy1(2)
 dmy1 = dmy1 +10
end subroutine sub2
