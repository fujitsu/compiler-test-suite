print *,'pass'
end

subroutine ssss()
character cha*10
cha(4:10)='12345'//cha
cha(4:10)='12345'//cha(1:3)
cha(4:10)=cha(1:3)
cha(4:10)=cha//'12345'//cha
cha(4:10)=cha
cha(4:10)=cha(1:10)
cha(4:10)=cha(1:10)//'a'
cha(4:10)=cha(1:4)
end

subroutine sub1()
character cha*10
cha(1:1) = 'a'//cha
cha(1:1) = cha//'a'
cha(1:1) = cha(1:1)
cha(1:1) = cha
end
