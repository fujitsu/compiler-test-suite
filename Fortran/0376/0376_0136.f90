subroutine s1
character(:),pointer::pa(:,:)
  character(2),target::ta2(2,3)=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))
pa=>ta2(:,:)(1:1)
if (len(pa)/=1)print *,'error-11'
call chk02(pa)
end
call s1
print *,'pass'
end
subroutine chk02(c)
character(*),dimension(6)::c
 if (len(c)/=1)print *,'901'
if (any(c/=(/'a','b','c','d','e','f'/)))print *,'error-902'
end
