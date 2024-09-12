subroutine s1
 character(:),pointer:: p1,p2(:,:)
 character(3),target :: t1='123',t2(2,3)=reshape((/'456','789','abc','def','ghi','jkl'/),(/2,3/))
 character(1),target :: t3='m',t4(2,3)=reshape((/'n','o','p','q','r','s'/),(/2,3/))
p1=> t1
 if (len(p1)/=3)print *,'error-01'
 if (p1/='123')print *,'error-02'
p2=> t2
 if (len(p2)/=3)print *,'error-03'
 if (any(p2/=reshape((/'456','789','abc','def','ghi','jkl'/),(/2,3/))))print *,'error-04'
p1=> t3
 if (len(p1)/=1)print *,'error-11'
 if (p1/='m')print *,'error-12'
p2=> t4
 if (len(p2)/=1)print *,'error-13'
 if (any(p2/=reshape((/'n','o','p','q','r','s'/),(/2,3/))))print *,'error-14'
end
call s1
print *,'pass'
end

