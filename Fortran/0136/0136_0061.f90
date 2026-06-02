call aaaa
call bbbb
call cccc
call dddd
call eeee
call ffff
call gggg
call hhhh
call iiii
call jjjj
print *,'pass'
contains
subroutine aaaa
  integer(1) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba001([i11],1)
  call suba001([i12],1)
  call suba001([i13],1)
  call suba001([i14],1)
  call suba001([i15],1)
  call suba001([i16],1)
  call suba001([i17],1)
  
  call suba001([+i11],1)
  call suba001([+i12],1)
  call suba001([+i13],1)
  call suba001([+i14],1)
  call suba001([+i15],1)
  call suba001([+i16],1)
  call suba001([+i17],1)
  
  call suba001([[+i11]],1)
  call suba001([[+i12]],1)
  call suba001([[+i13]],1)
  call suba001([[+i14]],1)
  call suba001([[+i15]],1)
  call suba001([[+i16]],1)
  call suba001([[+i17]],1)
  
  call suba001([+[+i11]],1)
  call suba001([+[+i12]],1)
  call suba001([+[+i13]],1)
  call suba001([+[+i14]],1)
  call suba001([+[+i15]],1)
  call suba001([+[+i16]],1)
  call suba001([+[+i17]],1)
  call suba001([-[-i11]],1)
  call suba001([-[-i12]],1)
  call suba001([-[-i13]],1)
  call suba001([-[-i14]],1)
  call suba001([-[-i15]],1)
  call suba001([-[-i16]],1)
  call suba001([-[-i17]],1)
  
  call suba001([i11+i11-i11],1)
  call suba001([i12+i12-i12],1)
  call suba001([i13+i13-i13],1)
  call suba001([i14+i14-i14],1)
  call suba001([i15+i15-i15],1)
  call suba001([i16+i16-i16],1)
  call suba001([i17+i17-i17],1)
  
  call suba001([[i11]**[i11]],1)
  call suba001([[i12]**[i12]],1)
  call suba001([[i13]**[i13]],1)
  call suba001([[i14]**[i14]],1)
  call suba001([[i15]**[i15]],1)
  call suba001([[i16]**[i16]],1)
  call suba001([[i17]**[i17]],1)
  
  call suba001([i11**i11-i11+i11],1)
  call suba001([i12**i12-i12+i12],1)
  call suba001([i13**i13-i13+i13],1)
  call suba001([i14**i14-i14+i14],1)
  call suba001([i15**i15-i15+i15],1)
  call suba001([i16**i16-i16+i16],1)
  call suba001([i17**i17-i17+i17],1)
  
  call suba001([[i11]+[i11]-[i11]],1)
  call suba001([[i12]+[i12]-[i12]],1)
  call suba001([[i13]+[i13]-[i13]],1)
  call suba001([[i14]+[i14]-[i14]],1)
  call suba001([[i15]+[i15]-[i15]],1)
  call suba001([[i16]+[i16]-[i16]],1)
  call suba001([[i17]+[i17]-[i17]],1)
  
  call suba001([[[[[[[[[[i11]]]]]]]]]],1)
  call suba001([[[[[[[[[[i12]]]]]]]]]],1)
  call suba001([[[[[[[[[[i13]]]]]]]]]],1)
  call suba001([[[[[[[[[[i14]]]]]]]]]],1)
  call suba001([[[[[[[[[[i15]]]]]]]]]],1)
  call suba001([[[[[[[[[[i16]]]]]]]]]],1)
  call suba001([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba001([[i11],[i11]],2)
  call suba001([[i12],[i12]],2)
  call suba001([[i13],[i13]],2)
  call suba001([[i14],[i14]],2)
  call suba001([[i15],[i15]],2)
  call suba001([[i16],[i16]],2)
  call suba001([[i17],[i17]],2)
  
  call suba001([[[[[i11]]]],i1],2)
  call suba001([[[[[i12]]]],i1],2)
  call suba001([[[[[i13]]]],i1],2)
  call suba001([[[[[i14]]]],i1],2)
  call suba001([[[[[i15]]]],i1],2)
  call suba001([[[[[i16]]]],i1],2)
  call suba001([[[[[i17]]]],i1],2)
  
  call suba001([[[[[+i11]]]],i1],2)
  call suba001([[[[[+i12]]]],i1],2)
  call suba001([[[[[+i13]]]],i1],2)
  call suba001([[[[[+i14]]]],i1],2)
  call suba001([[[[[+i15]]]],i1],2)
  call suba001([[[[[+i16]]]],i1],2)
  call suba001([[[[[+i17]]]],i1],2)
  
  call suba001([[[[[i11]]]],+i1],2)
  call suba001([[[[[i12]]]],+i1],2)
  call suba001([[[[[i13]]]],+i1],2)
  call suba001([[[[[i14]]]],+i1],2)
  call suba001([[[[[i15]]]],+i1],2)
  call suba001([[[[[i16]]]],+i1],2)
  call suba001([[[[[i17]]]],+i1],2)
  
  call suba001([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine aaaa
subroutine bbbb
  integer(2) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba002([i11],1)
  call suba002([i12],1)
  call suba002([i13],1)
  call suba002([i14],1)
  call suba002([i15],1)
  call suba002([i16],1)
  call suba002([i17],1)
  
  call suba002([+i11],1)
  call suba002([+i12],1)
  call suba002([+i13],1)
  call suba002([+i14],1)
  call suba002([+i15],1)
  call suba002([+i16],1)
  call suba002([+i17],1)
  
  call suba002([[+i11]],1)
  call suba002([[+i12]],1)
  call suba002([[+i13]],1)
  call suba002([[+i14]],1)
  call suba002([[+i15]],1)
  call suba002([[+i16]],1)
  call suba002([[+i17]],1)
  
  call suba002([+[+i11]],1)
  call suba002([+[+i12]],1)
  call suba002([+[+i13]],1)
  call suba002([+[+i14]],1)
  call suba002([+[+i15]],1)
  call suba002([+[+i16]],1)
  call suba002([+[+i17]],1)
  call suba002([-[-i11]],1)
  call suba002([-[-i12]],1)
  call suba002([-[-i13]],1)
  call suba002([-[-i14]],1)
  call suba002([-[-i15]],1)
  call suba002([-[-i16]],1)
  call suba002([-[-i17]],1)
  
  call suba002([i11+i11-i11],1)
  call suba002([i12+i12-i12],1)
  call suba002([i13+i13-i13],1)
  call suba002([i14+i14-i14],1)
  call suba002([i15+i15-i15],1)
  call suba002([i16+i16-i16],1)
  call suba002([i17+i17-i17],1)
  
  call suba002([[i11]**[i11]],1)
  call suba002([[i12]**[i12]],1)
  call suba002([[i13]**[i13]],1)
  call suba002([[i14]**[i14]],1)
  call suba002([[i15]**[i15]],1)
  call suba002([[i16]**[i16]],1)
  call suba002([[i17]**[i17]],1)
  
  call suba002([i11**i11-i11+i11],1)
  call suba002([i12**i12-i12+i12],1)
  call suba002([i13**i13-i13+i13],1)
  call suba002([i14**i14-i14+i14],1)
  call suba002([i15**i15-i15+i15],1)
  call suba002([i16**i16-i16+i16],1)
  call suba002([i17**i17-i17+i17],1)
  
  call suba002([[i11]+[i11]-[i11]],1)
  call suba002([[i12]+[i12]-[i12]],1)
  call suba002([[i13]+[i13]-[i13]],1)
  call suba002([[i14]+[i14]-[i14]],1)
  call suba002([[i15]+[i15]-[i15]],1)
  call suba002([[i16]+[i16]-[i16]],1)
  call suba002([[i17]+[i17]-[i17]],1)
  
  call suba002([[[[[[[[[[i11]]]]]]]]]],1)
  call suba002([[[[[[[[[[i12]]]]]]]]]],1)
  call suba002([[[[[[[[[[i13]]]]]]]]]],1)
  call suba002([[[[[[[[[[i14]]]]]]]]]],1)
  call suba002([[[[[[[[[[i15]]]]]]]]]],1)
  call suba002([[[[[[[[[[i16]]]]]]]]]],1)
  call suba002([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba002([[i11],[i11]],2)
  call suba002([[i12],[i12]],2)
  call suba002([[i13],[i13]],2)
  call suba002([[i14],[i14]],2)
  call suba002([[i15],[i15]],2)
  call suba002([[i16],[i16]],2)
  call suba002([[i17],[i17]],2)
  
  call suba002([[[[[i11]]]],i1],2)
  call suba002([[[[[i12]]]],i1],2)
  call suba002([[[[[i13]]]],i1],2)
  call suba002([[[[[i14]]]],i1],2)
  call suba002([[[[[i15]]]],i1],2)
  call suba002([[[[[i16]]]],i1],2)
  call suba002([[[[[i17]]]],i1],2)
  
  call suba002([[[[[+i11]]]],i1],2)
  call suba002([[[[[+i12]]]],i1],2)
  call suba002([[[[[+i13]]]],i1],2)
  call suba002([[[[[+i14]]]],i1],2)
  call suba002([[[[[+i15]]]],i1],2)
  call suba002([[[[[+i16]]]],i1],2)
  call suba002([[[[[+i17]]]],i1],2)
  
  call suba002([[[[[i11]]]],+i1],2)
  call suba002([[[[[i12]]]],+i1],2)
  call suba002([[[[[i13]]]],+i1],2)
  call suba002([[[[[i14]]]],+i1],2)
  call suba002([[[[[i15]]]],+i1],2)
  call suba002([[[[[i16]]]],+i1],2)
  call suba002([[[[[i17]]]],+i1],2)
  
  call suba002([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine bbbb
subroutine cccc
  integer(4) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba003([i11],1)
  call suba003([i12],1)
  call suba003([i13],1)
  call suba003([i14],1)
  call suba003([i15],1)
  call suba003([i16],1)
  call suba003([i17],1)
  
  call suba003([+i11],1)
  call suba003([+i12],1)
  call suba003([+i13],1)
  call suba003([+i14],1)
  call suba003([+i15],1)
  call suba003([+i16],1)
  call suba003([+i17],1)
  
  call suba003([[+i11]],1)
  call suba003([[+i12]],1)
  call suba003([[+i13]],1)
  call suba003([[+i14]],1)
  call suba003([[+i15]],1)
  call suba003([[+i16]],1)
  call suba003([[+i17]],1)
  
  call suba003([+[+i11]],1)
  call suba003([+[+i12]],1)
  call suba003([+[+i13]],1)
  call suba003([+[+i14]],1)
  call suba003([+[+i15]],1)
  call suba003([+[+i16]],1)
  call suba003([+[+i17]],1)
  call suba003([-[-i11]],1)
  call suba003([-[-i12]],1)
  call suba003([-[-i13]],1)
  call suba003([-[-i14]],1)
  call suba003([-[-i15]],1)
  call suba003([-[-i16]],1)
  call suba003([-[-i17]],1)
  
  call suba003([i11+i11-i11],1)
  call suba003([i12+i12-i12],1)
  call suba003([i13+i13-i13],1)
  call suba003([i14+i14-i14],1)
  call suba003([i15+i15-i15],1)
  call suba003([i16+i16-i16],1)
  call suba003([i17+i17-i17],1)
  
  call suba003([[i11]**[i11]],1)
  call suba003([[i12]**[i12]],1)
  call suba003([[i13]**[i13]],1)
  call suba003([[i14]**[i14]],1)
  call suba003([[i15]**[i15]],1)
  call suba003([[i16]**[i16]],1)
  call suba003([[i17]**[i17]],1)
  
  call suba003([i11**i11-i11+i11],1)
  call suba003([i12**i12-i12+i12],1)
  call suba003([i13**i13-i13+i13],1)
  call suba003([i14**i14-i14+i14],1)
  call suba003([i15**i15-i15+i15],1)
  call suba003([i16**i16-i16+i16],1)
  call suba003([i17**i17-i17+i17],1)
  
  call suba003([[i11]+[i11]-[i11]],1)
  call suba003([[i12]+[i12]-[i12]],1)
  call suba003([[i13]+[i13]-[i13]],1)
  call suba003([[i14]+[i14]-[i14]],1)
  call suba003([[i15]+[i15]-[i15]],1)
  call suba003([[i16]+[i16]-[i16]],1)
  call suba003([[i17]+[i17]-[i17]],1)
  
  call suba003([[[[[[[[[[i11]]]]]]]]]],1)
  call suba003([[[[[[[[[[i12]]]]]]]]]],1)
  call suba003([[[[[[[[[[i13]]]]]]]]]],1)
  call suba003([[[[[[[[[[i14]]]]]]]]]],1)
  call suba003([[[[[[[[[[i15]]]]]]]]]],1)
  call suba003([[[[[[[[[[i16]]]]]]]]]],1)
  call suba003([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba003([[i11],[i11]],2)
  call suba003([[i12],[i12]],2)
  call suba003([[i13],[i13]],2)
  call suba003([[i14],[i14]],2)
  call suba003([[i15],[i15]],2)
  call suba003([[i16],[i16]],2)
  call suba003([[i17],[i17]],2)
  
  call suba003([[[[[i11]]]],i1],2)
  call suba003([[[[[i12]]]],i1],2)
  call suba003([[[[[i13]]]],i1],2)
  call suba003([[[[[i14]]]],i1],2)
  call suba003([[[[[i15]]]],i1],2)
  call suba003([[[[[i16]]]],i1],2)
  call suba003([[[[[i17]]]],i1],2)
  
  call suba003([[[[[+i11]]]],i1],2)
  call suba003([[[[[+i12]]]],i1],2)
  call suba003([[[[[+i13]]]],i1],2)
  call suba003([[[[[+i14]]]],i1],2)
  call suba003([[[[[+i15]]]],i1],2)
  call suba003([[[[[+i16]]]],i1],2)
  call suba003([[[[[+i17]]]],i1],2)
  
  call suba003([[[[[i11]]]],+i1],2)
  call suba003([[[[[i12]]]],+i1],2)
  call suba003([[[[[i13]]]],+i1],2)
  call suba003([[[[[i14]]]],+i1],2)
  call suba003([[[[[i15]]]],+i1],2)
  call suba003([[[[[i16]]]],+i1],2)
  call suba003([[[[[i17]]]],+i1],2)
  
  call suba003([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine cccc
subroutine dddd
  integer(8) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba004([i11],1)
  call suba004([i12],1)
  call suba004([i13],1)
  call suba004([i14],1)
  call suba004([i15],1)
  call suba004([i16],1)
  call suba004([i17],1)
  
  call suba004([+i11],1)
  call suba004([+i12],1)
  call suba004([+i13],1)
  call suba004([+i14],1)
  call suba004([+i15],1)
  call suba004([+i16],1)
  call suba004([+i17],1)
  
  call suba004([[+i11]],1)
  call suba004([[+i12]],1)
  call suba004([[+i13]],1)
  call suba004([[+i14]],1)
  call suba004([[+i15]],1)
  call suba004([[+i16]],1)
  call suba004([[+i17]],1)
  
  call suba004([+[+i11]],1)
  call suba004([+[+i12]],1)
  call suba004([+[+i13]],1)
  call suba004([+[+i14]],1)
  call suba004([+[+i15]],1)
  call suba004([+[+i16]],1)
  call suba004([+[+i17]],1)
  call suba004([-[-i11]],1)
  call suba004([-[-i12]],1)
  call suba004([-[-i13]],1)
  call suba004([-[-i14]],1)
  call suba004([-[-i15]],1)
  call suba004([-[-i16]],1)
  call suba004([-[-i17]],1)
  
  call suba004([i11+i11-i11],1)
  call suba004([i12+i12-i12],1)
  call suba004([i13+i13-i13],1)
  call suba004([i14+i14-i14],1)
  call suba004([i15+i15-i15],1)
  call suba004([i16+i16-i16],1)
  call suba004([i17+i17-i17],1)
  
  call suba004([[i11]**[i11]],1)
  call suba004([[i12]**[i12]],1)
  call suba004([[i13]**[i13]],1)
  call suba004([[i14]**[i14]],1)
  call suba004([[i15]**[i15]],1)
  call suba004([[i16]**[i16]],1)
  call suba004([[i17]**[i17]],1)
  
  call suba004([i11**i11-i11+i11],1)
  call suba004([i12**i12-i12+i12],1)
  call suba004([i13**i13-i13+i13],1)
  call suba004([i14**i14-i14+i14],1)
  call suba004([i15**i15-i15+i15],1)
  call suba004([i16**i16-i16+i16],1)
  call suba004([i17**i17-i17+i17],1)
  
  call suba004([[i11]+[i11]-[i11]],1)
  call suba004([[i12]+[i12]-[i12]],1)
  call suba004([[i13]+[i13]-[i13]],1)
  call suba004([[i14]+[i14]-[i14]],1)
  call suba004([[i15]+[i15]-[i15]],1)
  call suba004([[i16]+[i16]-[i16]],1)
  call suba004([[i17]+[i17]-[i17]],1)
  
  call suba004([[[[[[[[[[i11]]]]]]]]]],1)
  call suba004([[[[[[[[[[i12]]]]]]]]]],1)
  call suba004([[[[[[[[[[i13]]]]]]]]]],1)
  call suba004([[[[[[[[[[i14]]]]]]]]]],1)
  call suba004([[[[[[[[[[i15]]]]]]]]]],1)
  call suba004([[[[[[[[[[i16]]]]]]]]]],1)
  call suba004([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba004([[i11],[i11]],2)
  call suba004([[i12],[i12]],2)
  call suba004([[i13],[i13]],2)
  call suba004([[i14],[i14]],2)
  call suba004([[i15],[i15]],2)
  call suba004([[i16],[i16]],2)
  call suba004([[i17],[i17]],2)
  
  call suba004([[[[[i11]]]],i1],2)
  call suba004([[[[[i12]]]],i1],2)
  call suba004([[[[[i13]]]],i1],2)
  call suba004([[[[[i14]]]],i1],2)
  call suba004([[[[[i15]]]],i1],2)
  call suba004([[[[[i16]]]],i1],2)
  call suba004([[[[[i17]]]],i1],2)
  
  call suba004([[[[[+i11]]]],i1],2)
  call suba004([[[[[+i12]]]],i1],2)
  call suba004([[[[[+i13]]]],i1],2)
  call suba004([[[[[+i14]]]],i1],2)
  call suba004([[[[[+i15]]]],i1],2)
  call suba004([[[[[+i16]]]],i1],2)
  call suba004([[[[[+i17]]]],i1],2)
  
  call suba004([[[[[i11]]]],+i1],2)
  call suba004([[[[[i12]]]],+i1],2)
  call suba004([[[[[i13]]]],+i1],2)
  call suba004([[[[[i14]]]],+i1],2)
  call suba004([[[[[i15]]]],+i1],2)
  call suba004([[[[[i16]]]],+i1],2)
  call suba004([[[[[i17]]]],+i1],2)
  
  call suba004([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine dddd
subroutine eeee
  real(4) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba005([i11],1)
  call suba005([i12],1)
  call suba005([i13],1)
  call suba005([i14],1)
  call suba005([i15],1)
  call suba005([i16],1)
  call suba005([i17],1)
  
  call suba005([+i11],1)
  call suba005([+i12],1)
  call suba005([+i13],1)
  call suba005([+i14],1)
  call suba005([+i15],1)
  call suba005([+i16],1)
  call suba005([+i17],1)
  
  call suba005([[+i11]],1)
  call suba005([[+i12]],1)
  call suba005([[+i13]],1)
  call suba005([[+i14]],1)
  call suba005([[+i15]],1)
  call suba005([[+i16]],1)
  call suba005([[+i17]],1)
  
  call suba005([+[+i11]],1)
  call suba005([+[+i12]],1)
  call suba005([+[+i13]],1)
  call suba005([+[+i14]],1)
  call suba005([+[+i15]],1)
  call suba005([+[+i16]],1)
  call suba005([+[+i17]],1)
  call suba005([-[-i11]],1)
  call suba005([-[-i12]],1)
  call suba005([-[-i13]],1)
  call suba005([-[-i14]],1)
  call suba005([-[-i15]],1)
  call suba005([-[-i16]],1)
  call suba005([-[-i17]],1)
  
  call suba005([i11+i11-i11],1)
  call suba005([i12+i12-i12],1)
  call suba005([i13+i13-i13],1)
  call suba005([i14+i14-i14],1)
  call suba005([i15+i15-i15],1)
  call suba005([i16+i16-i16],1)
  call suba005([i17+i17-i17],1)
  
  call suba005([[i11]**[i11]],1)
  call suba005([[i12]**[i12]],1)
  call suba005([[i13]**[i13]],1)
  call suba005([[i14]**[i14]],1)
  call suba005([[i15]**[i15]],1)
  call suba005([[i16]**[i16]],1)
  call suba005([[i17]**[i17]],1)
  
  call suba005([i11**i11-i11+i11],1)
  call suba005([i12**i12-i12+i12],1)
  call suba005([i13**i13-i13+i13],1)
  call suba005([i14**i14-i14+i14],1)
  call suba005([i15**i15-i15+i15],1)
  call suba005([i16**i16-i16+i16],1)
  call suba005([i17**i17-i17+i17],1)
  
  call suba005([[i11]+[i11]-[i11]],1)
  call suba005([[i12]+[i12]-[i12]],1)
  call suba005([[i13]+[i13]-[i13]],1)
  call suba005([[i14]+[i14]-[i14]],1)
  call suba005([[i15]+[i15]-[i15]],1)
  call suba005([[i16]+[i16]-[i16]],1)
  call suba005([[i17]+[i17]-[i17]],1)
  
  call suba005([[[[[[[[[[i11]]]]]]]]]],1)
  call suba005([[[[[[[[[[i12]]]]]]]]]],1)
  call suba005([[[[[[[[[[i13]]]]]]]]]],1)
  call suba005([[[[[[[[[[i14]]]]]]]]]],1)
  call suba005([[[[[[[[[[i15]]]]]]]]]],1)
  call suba005([[[[[[[[[[i16]]]]]]]]]],1)
  call suba005([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba005([[i11],[i11]],2)
  call suba005([[i12],[i12]],2)
  call suba005([[i13],[i13]],2)
  call suba005([[i14],[i14]],2)
  call suba005([[i15],[i15]],2)
  call suba005([[i16],[i16]],2)
  call suba005([[i17],[i17]],2)
  
  call suba005([[[[[i11]]]],i1],2)
  call suba005([[[[[i12]]]],i1],2)
  call suba005([[[[[i13]]]],i1],2)
  call suba005([[[[[i14]]]],i1],2)
  call suba005([[[[[i15]]]],i1],2)
  call suba005([[[[[i16]]]],i1],2)
  call suba005([[[[[i17]]]],i1],2)
  
  call suba005([[[[[+i11]]]],i1],2)
  call suba005([[[[[+i12]]]],i1],2)
  call suba005([[[[[+i13]]]],i1],2)
  call suba005([[[[[+i14]]]],i1],2)
  call suba005([[[[[+i15]]]],i1],2)
  call suba005([[[[[+i16]]]],i1],2)
  call suba005([[[[[+i17]]]],i1],2)
  
  call suba005([[[[[i11]]]],+i1],2)
  call suba005([[[[[i12]]]],+i1],2)
  call suba005([[[[[i13]]]],+i1],2)
  call suba005([[[[[i14]]]],+i1],2)
  call suba005([[[[[i15]]]],+i1],2)
  call suba005([[[[[i16]]]],+i1],2)
  call suba005([[[[[i17]]]],+i1],2)
  
  call suba005([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine eeee
subroutine ffff
  real(8) i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba006([i11],1)
  call suba006([i12],1)
  call suba006([i13],1)
  call suba006([i14],1)
  call suba006([i15],1)
  call suba006([i16],1)
  call suba006([i17],1)
  
  call suba006([+i11],1)
  call suba006([+i12],1)
  call suba006([+i13],1)
  call suba006([+i14],1)
  call suba006([+i15],1)
  call suba006([+i16],1)
  call suba006([+i17],1)
  
  call suba006([[+i11]],1)
  call suba006([[+i12]],1)
  call suba006([[+i13]],1)
  call suba006([[+i14]],1)
  call suba006([[+i15]],1)
  call suba006([[+i16]],1)
  call suba006([[+i17]],1)
  
  call suba006([+[+i11]],1)
  call suba006([+[+i12]],1)
  call suba006([+[+i13]],1)
  call suba006([+[+i14]],1)
  call suba006([+[+i15]],1)
  call suba006([+[+i16]],1)
  call suba006([+[+i17]],1)
  call suba006([-[-i11]],1)
  call suba006([-[-i12]],1)
  call suba006([-[-i13]],1)
  call suba006([-[-i14]],1)
  call suba006([-[-i15]],1)
  call suba006([-[-i16]],1)
  call suba006([-[-i17]],1)
  
  call suba006([i11+i11-i11],1)
  call suba006([i12+i12-i12],1)
  call suba006([i13+i13-i13],1)
  call suba006([i14+i14-i14],1)
  call suba006([i15+i15-i15],1)
  call suba006([i16+i16-i16],1)
  call suba006([i17+i17-i17],1)
  
  call suba006([[i11]**[i11]],1)
  call suba006([[i12]**[i12]],1)
  call suba006([[i13]**[i13]],1)
  call suba006([[i14]**[i14]],1)
  call suba006([[i15]**[i15]],1)
  call suba006([[i16]**[i16]],1)
  call suba006([[i17]**[i17]],1)
  
  call suba006([i11**i11-i11+i11],1)
  call suba006([i12**i12-i12+i12],1)
  call suba006([i13**i13-i13+i13],1)
  call suba006([i14**i14-i14+i14],1)
  call suba006([i15**i15-i15+i15],1)
  call suba006([i16**i16-i16+i16],1)
  call suba006([i17**i17-i17+i17],1)
  
  call suba006([[i11]+[i11]-[i11]],1)
  call suba006([[i12]+[i12]-[i12]],1)
  call suba006([[i13]+[i13]-[i13]],1)
  call suba006([[i14]+[i14]-[i14]],1)
  call suba006([[i15]+[i15]-[i15]],1)
  call suba006([[i16]+[i16]-[i16]],1)
  call suba006([[i17]+[i17]-[i17]],1)
  
  call suba006([[[[[[[[[[i11]]]]]]]]]],1)
  call suba006([[[[[[[[[[i12]]]]]]]]]],1)
  call suba006([[[[[[[[[[i13]]]]]]]]]],1)
  call suba006([[[[[[[[[[i14]]]]]]]]]],1)
  call suba006([[[[[[[[[[i15]]]]]]]]]],1)
  call suba006([[[[[[[[[[i16]]]]]]]]]],1)
  call suba006([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba006([[i11],[i11]],2)
  call suba006([[i12],[i12]],2)
  call suba006([[i13],[i13]],2)
  call suba006([[i14],[i14]],2)
  call suba006([[i15],[i15]],2)
  call suba006([[i16],[i16]],2)
  call suba006([[i17],[i17]],2)
  
  call suba006([[[[[i11]]]],i1],2)
  call suba006([[[[[i12]]]],i1],2)
  call suba006([[[[[i13]]]],i1],2)
  call suba006([[[[[i14]]]],i1],2)
  call suba006([[[[[i15]]]],i1],2)
  call suba006([[[[[i16]]]],i1],2)
  call suba006([[[[[i17]]]],i1],2)
  
  call suba006([[[[[+i11]]]],i1],2)
  call suba006([[[[[+i12]]]],i1],2)
  call suba006([[[[[+i13]]]],i1],2)
  call suba006([[[[[+i14]]]],i1],2)
  call suba006([[[[[+i15]]]],i1],2)
  call suba006([[[[[+i16]]]],i1],2)
  call suba006([[[[[+i17]]]],i1],2)
  
  call suba006([[[[[i11]]]],+i1],2)
  call suba006([[[[[i12]]]],+i1],2)
  call suba006([[[[[i13]]]],+i1],2)
  call suba006([[[[[i14]]]],+i1],2)
  call suba006([[[[[i15]]]],+i1],2)
  call suba006([[[[[i16]]]],+i1],2)
  call suba006([[[[[i17]]]],+i1],2)
  
  call suba006([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine ffff
subroutine gggg
  real(16):: i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba007([i11],1)
  call suba007([i12],1)
  call suba007([i13],1)
  call suba007([i14],1)
  call suba007([i15],1)
  call suba007([i16],1)
  call suba007([i17],1)
  
  call suba007([+i11],1)
  call suba007([+i12],1)
  call suba007([+i13],1)
  call suba007([+i14],1)
  call suba007([+i15],1)
  call suba007([+i16],1)
  call suba007([+i17],1)
  
  call suba007([[+i11]],1)
  call suba007([[+i12]],1)
  call suba007([[+i13]],1)
  call suba007([[+i14]],1)
  call suba007([[+i15]],1)
  call suba007([[+i16]],1)
  call suba007([[+i17]],1)
  
  call suba007([+[+i11]],1)
  call suba007([+[+i12]],1)
  call suba007([+[+i13]],1)
  call suba007([+[+i14]],1)
  call suba007([+[+i15]],1)
  call suba007([+[+i16]],1)
  call suba007([+[+i17]],1)
  call suba007([-[-i11]],1)
  call suba007([-[-i12]],1)
  call suba007([-[-i13]],1)
  call suba007([-[-i14]],1)
  call suba007([-[-i15]],1)
  call suba007([-[-i16]],1)
  call suba007([-[-i17]],1)
  
  call suba007([i11+i11-i11],1)
  call suba007([i12+i12-i12],1)
  call suba007([i13+i13-i13],1)
  call suba007([i14+i14-i14],1)
  call suba007([i15+i15-i15],1)
  call suba007([i16+i16-i16],1)
  call suba007([i17+i17-i17],1)
  
  call suba007([[i11]**[i11]],1)
  call suba007([[i12]**[i12]],1)
  call suba007([[i13]**[i13]],1)
  call suba007([[i14]**[i14]],1)
  call suba007([[i15]**[i15]],1)
  call suba007([[i16]**[i16]],1)
  call suba007([[i17]**[i17]],1)
  
  call suba007([i11**i11-i11+i11],1)
  call suba007([i12**i12-i12+i12],1)
  call suba007([i13**i13-i13+i13],1)
  call suba007([i14**i14-i14+i14],1)
  call suba007([i15**i15-i15+i15],1)
  call suba007([i16**i16-i16+i16],1)
  call suba007([i17**i17-i17+i17],1)
  
  call suba007([[i11]+[i11]-[i11]],1)
  call suba007([[i12]+[i12]-[i12]],1)
  call suba007([[i13]+[i13]-[i13]],1)
  call suba007([[i14]+[i14]-[i14]],1)
  call suba007([[i15]+[i15]-[i15]],1)
  call suba007([[i16]+[i16]-[i16]],1)
  call suba007([[i17]+[i17]-[i17]],1)
  
  call suba007([[[[[[[[[[i11]]]]]]]]]],1)
  call suba007([[[[[[[[[[i12]]]]]]]]]],1)
  call suba007([[[[[[[[[[i13]]]]]]]]]],1)
  call suba007([[[[[[[[[[i14]]]]]]]]]],1)
  call suba007([[[[[[[[[[i15]]]]]]]]]],1)
  call suba007([[[[[[[[[[i16]]]]]]]]]],1)
  call suba007([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba007([[i11],[i11]],2)
  call suba007([[i12],[i12]],2)
  call suba007([[i13],[i13]],2)
  call suba007([[i14],[i14]],2)
  call suba007([[i15],[i15]],2)
  call suba007([[i16],[i16]],2)
  call suba007([[i17],[i17]],2)
  
  call suba007([[[[[i11]]]],i1],2)
  call suba007([[[[[i12]]]],i1],2)
  call suba007([[[[[i13]]]],i1],2)
  call suba007([[[[[i14]]]],i1],2)
  call suba007([[[[[i15]]]],i1],2)
  call suba007([[[[[i16]]]],i1],2)
  call suba007([[[[[i17]]]],i1],2)
  
  call suba007([[[[[+i11]]]],i1],2)
  call suba007([[[[[+i12]]]],i1],2)
  call suba007([[[[[+i13]]]],i1],2)
  call suba007([[[[[+i14]]]],i1],2)
  call suba007([[[[[+i15]]]],i1],2)
  call suba007([[[[[+i16]]]],i1],2)
  call suba007([[[[[+i17]]]],i1],2)
  
  call suba007([[[[[i11]]]],+i1],2)
  call suba007([[[[[i12]]]],+i1],2)
  call suba007([[[[[i13]]]],+i1],2)
  call suba007([[[[[i14]]]],+i1],2)
  call suba007([[[[[i15]]]],+i1],2)
  call suba007([[[[[i16]]]],+i1],2)
  call suba007([[[[[i17]]]],+i1],2)
  
  call suba007([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine gggg
subroutine hhhh
  complex(4):: i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba008([i11],1)
  call suba008([i12],1)
  call suba008([i13],1)
  call suba008([i14],1)
  call suba008([i15],1)
  call suba008([i16],1)
  call suba008([i17],1)
  
  call suba008([+i11],1)
  call suba008([+i12],1)
  call suba008([+i13],1)
  call suba008([+i14],1)
  call suba008([+i15],1)
  call suba008([+i16],1)
  call suba008([+i17],1)
  
  call suba008([[+i11]],1)
  call suba008([[+i12]],1)
  call suba008([[+i13]],1)
  call suba008([[+i14]],1)
  call suba008([[+i15]],1)
  call suba008([[+i16]],1)
  call suba008([[+i17]],1)
  
  call suba008([+[+i11]],1)
  call suba008([+[+i12]],1)
  call suba008([+[+i13]],1)
  call suba008([+[+i14]],1)
  call suba008([+[+i15]],1)
  call suba008([+[+i16]],1)
  call suba008([+[+i17]],1)
  call suba008([-[-i11]],1)
  call suba008([-[-i12]],1)
  call suba008([-[-i13]],1)
  call suba008([-[-i14]],1)
  call suba008([-[-i15]],1)
  call suba008([-[-i16]],1)
  call suba008([-[-i17]],1)
  
  call suba008([i11+i11-i11],1)
  call suba008([i12+i12-i12],1)
  call suba008([i13+i13-i13],1)
  call suba008([i14+i14-i14],1)
  call suba008([i15+i15-i15],1)
  call suba008([i16+i16-i16],1)
  call suba008([i17+i17-i17],1)
  
  call suba008([[i11]**[i11]],1)
  call suba008([[i12]**[i12]],1)
  call suba008([[i13]**[i13]],1)
  call suba008([[i14]**[i14]],1)
  call suba008([[i15]**[i15]],1)
  call suba008([[i16]**[i16]],1)
  call suba008([[i17]**[i17]],1)
  
  call suba008([i11**i11-i11+i11],1)
  call suba008([i12**i12-i12+i12],1)
  call suba008([i13**i13-i13+i13],1)
  call suba008([i14**i14-i14+i14],1)
  call suba008([i15**i15-i15+i15],1)
  call suba008([i16**i16-i16+i16],1)
  call suba008([i17**i17-i17+i17],1)
  
  call suba008([[i11]+[i11]-[i11]],1)
  call suba008([[i12]+[i12]-[i12]],1)
  call suba008([[i13]+[i13]-[i13]],1)
  call suba008([[i14]+[i14]-[i14]],1)
  call suba008([[i15]+[i15]-[i15]],1)
  call suba008([[i16]+[i16]-[i16]],1)
  call suba008([[i17]+[i17]-[i17]],1)
  
  call suba008([[[[[[[[[[i11]]]]]]]]]],1)
  call suba008([[[[[[[[[[i12]]]]]]]]]],1)
  call suba008([[[[[[[[[[i13]]]]]]]]]],1)
  call suba008([[[[[[[[[[i14]]]]]]]]]],1)
  call suba008([[[[[[[[[[i15]]]]]]]]]],1)
  call suba008([[[[[[[[[[i16]]]]]]]]]],1)
  call suba008([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba008([[i11],[i11]],2)
  call suba008([[i12],[i12]],2)
  call suba008([[i13],[i13]],2)
  call suba008([[i14],[i14]],2)
  call suba008([[i15],[i15]],2)
  call suba008([[i16],[i16]],2)
  call suba008([[i17],[i17]],2)
  
  call suba008([[[[[i11]]]],i1],2)
  call suba008([[[[[i12]]]],i1],2)
  call suba008([[[[[i13]]]],i1],2)
  call suba008([[[[[i14]]]],i1],2)
  call suba008([[[[[i15]]]],i1],2)
  call suba008([[[[[i16]]]],i1],2)
  call suba008([[[[[i17]]]],i1],2)
  
  call suba008([[[[[+i11]]]],i1],2)
  call suba008([[[[[+i12]]]],i1],2)
  call suba008([[[[[+i13]]]],i1],2)
  call suba008([[[[[+i14]]]],i1],2)
  call suba008([[[[[+i15]]]],i1],2)
  call suba008([[[[[+i16]]]],i1],2)
  call suba008([[[[[+i17]]]],i1],2)
  
  call suba008([[[[[i11]]]],+i1],2)
  call suba008([[[[[i12]]]],+i1],2)
  call suba008([[[[[i13]]]],+i1],2)
  call suba008([[[[[i14]]]],+i1],2)
  call suba008([[[[[i15]]]],+i1],2)
  call suba008([[[[[i16]]]],+i1],2)
  call suba008([[[[[i17]]]],+i1],2)
  
  call suba008([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine hhhh
subroutine iiii
 complex(8):: i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba009([i11],1)
  call suba009([i12],1)
  call suba009([i13],1)
  call suba009([i14],1)
  call suba009([i15],1)
  call suba009([i16],1)
  call suba009([i17],1)
  
  call suba009([+i11],1)
  call suba009([+i12],1)
  call suba009([+i13],1)
  call suba009([+i14],1)
  call suba009([+i15],1)
  call suba009([+i16],1)
  call suba009([+i17],1)
  
  call suba009([[+i11]],1)
  call suba009([[+i12]],1)
  call suba009([[+i13]],1)
  call suba009([[+i14]],1)
  call suba009([[+i15]],1)
  call suba009([[+i16]],1)
  call suba009([[+i17]],1)
  
  call suba009([+[+i11]],1)
  call suba009([+[+i12]],1)
  call suba009([+[+i13]],1)
  call suba009([+[+i14]],1)
  call suba009([+[+i15]],1)
  call suba009([+[+i16]],1)
  call suba009([+[+i17]],1)
  call suba009([-[-i11]],1)
  call suba009([-[-i12]],1)
  call suba009([-[-i13]],1)
  call suba009([-[-i14]],1)
  call suba009([-[-i15]],1)
  call suba009([-[-i16]],1)
  call suba009([-[-i17]],1)
  
  call suba009([i11+i11-i11],1)
  call suba009([i12+i12-i12],1)
  call suba009([i13+i13-i13],1)
  call suba009([i14+i14-i14],1)
  call suba009([i15+i15-i15],1)
  call suba009([i16+i16-i16],1)
  call suba009([i17+i17-i17],1)
  
  call suba009([[i11]**[i11]],1)
  call suba009([[i12]**[i12]],1)
  call suba009([[i13]**[i13]],1)
  call suba009([[i14]**[i14]],1)
  call suba009([[i15]**[i15]],1)
  call suba009([[i16]**[i16]],1)
  call suba009([[i17]**[i17]],1)
  
  call suba009([i11**i11-i11+i11],1)
  call suba009([i12**i12-i12+i12],1)
  call suba009([i13**i13-i13+i13],1)
  call suba009([i14**i14-i14+i14],1)
  call suba009([i15**i15-i15+i15],1)
  call suba009([i16**i16-i16+i16],1)
  call suba009([i17**i17-i17+i17],1)
  
  call suba009([[i11]+[i11]-[i11]],1)
  call suba009([[i12]+[i12]-[i12]],1)
  call suba009([[i13]+[i13]-[i13]],1)
  call suba009([[i14]+[i14]-[i14]],1)
  call suba009([[i15]+[i15]-[i15]],1)
  call suba009([[i16]+[i16]-[i16]],1)
  call suba009([[i17]+[i17]-[i17]],1)
  
  call suba009([[[[[[[[[[i11]]]]]]]]]],1)
  call suba009([[[[[[[[[[i12]]]]]]]]]],1)
  call suba009([[[[[[[[[[i13]]]]]]]]]],1)
  call suba009([[[[[[[[[[i14]]]]]]]]]],1)
  call suba009([[[[[[[[[[i15]]]]]]]]]],1)
  call suba009([[[[[[[[[[i16]]]]]]]]]],1)
  call suba009([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba009([[i11],[i11]],2)
  call suba009([[i12],[i12]],2)
  call suba009([[i13],[i13]],2)
  call suba009([[i14],[i14]],2)
  call suba009([[i15],[i15]],2)
  call suba009([[i16],[i16]],2)
  call suba009([[i17],[i17]],2)
  
  call suba009([[[[[i11]]]],i1],2)
  call suba009([[[[[i12]]]],i1],2)
  call suba009([[[[[i13]]]],i1],2)
  call suba009([[[[[i14]]]],i1],2)
  call suba009([[[[[i15]]]],i1],2)
  call suba009([[[[[i16]]]],i1],2)
  call suba009([[[[[i17]]]],i1],2)
  
  call suba009([[[[[+i11]]]],i1],2)
  call suba009([[[[[+i12]]]],i1],2)
  call suba009([[[[[+i13]]]],i1],2)
  call suba009([[[[[+i14]]]],i1],2)
  call suba009([[[[[+i15]]]],i1],2)
  call suba009([[[[[+i16]]]],i1],2)
  call suba009([[[[[+i17]]]],i1],2)
  
  call suba009([[[[[i11]]]],+i1],2)
  call suba009([[[[[i12]]]],+i1],2)
  call suba009([[[[[i13]]]],+i1],2)
  call suba009([[[[[i14]]]],+i1],2)
  call suba009([[[[[i15]]]],+i1],2)
  call suba009([[[[[i16]]]],+i1],2)
  call suba009([[[[[i17]]]],+i1],2)
  
  call suba009([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine iiii
subroutine jjjj
 complex(16):: i1,i11(1),i12(1,1),i13(1,1,1),i14(1,1,1,1),&
       i15(1,1,1,1,1),i16(1,1,1,1,1,1),i17(1,1,1,1,1,1,1)
  i1=1
  i11=1
  i12=1
  i13=1
  i14=1
  i15=1
  i16=1
  i17=1
  call suba010([i11],1)
  call suba010([i12],1)
  call suba010([i13],1)
  call suba010([i14],1)
  call suba010([i15],1)
  call suba010([i16],1)
  call suba010([i17],1)
  
  call suba010([+i11],1)
  call suba010([+i12],1)
  call suba010([+i13],1)
  call suba010([+i14],1)
  call suba010([+i15],1)
  call suba010([+i16],1)
  call suba010([+i17],1)
  
  call suba010([[+i11]],1)
  call suba010([[+i12]],1)
  call suba010([[+i13]],1)
  call suba010([[+i14]],1)
  call suba010([[+i15]],1)
  call suba010([[+i16]],1)
  call suba010([[+i17]],1)
  
  call suba010([+[+i11]],1)
  call suba010([+[+i12]],1)
  call suba010([+[+i13]],1)
  call suba010([+[+i14]],1)
  call suba010([+[+i15]],1)
  call suba010([+[+i16]],1)
  call suba010([+[+i17]],1)
  call suba010([-[-i11]],1)
  call suba010([-[-i12]],1)
  call suba010([-[-i13]],1)
  call suba010([-[-i14]],1)
  call suba010([-[-i15]],1)
  call suba010([-[-i16]],1)
  call suba010([-[-i17]],1)
  
  call suba010([i11+i11-i11],1)
  call suba010([i12+i12-i12],1)
  call suba010([i13+i13-i13],1)
  call suba010([i14+i14-i14],1)
  call suba010([i15+i15-i15],1)
  call suba010([i16+i16-i16],1)
  call suba010([i17+i17-i17],1)
  
  call suba010([[i11]**[i11]],1)
  call suba010([[i12]**[i12]],1)
  call suba010([[i13]**[i13]],1)
  call suba010([[i14]**[i14]],1)
  call suba010([[i15]**[i15]],1)
  call suba010([[i16]**[i16]],1)
  call suba010([[i17]**[i17]],1)
  
  call suba010([i11**i11-i11+i11],1)
  call suba010([i12**i12-i12+i12],1)
  call suba010([i13**i13-i13+i13],1)
  call suba010([i14**i14-i14+i14],1)
  call suba010([i15**i15-i15+i15],1)
  call suba010([i16**i16-i16+i16],1)
  call suba010([i17**i17-i17+i17],1)
  
  call suba010([[i11]+[i11]-[i11]],1)
  call suba010([[i12]+[i12]-[i12]],1)
  call suba010([[i13]+[i13]-[i13]],1)
  call suba010([[i14]+[i14]-[i14]],1)
  call suba010([[i15]+[i15]-[i15]],1)
  call suba010([[i16]+[i16]-[i16]],1)
  call suba010([[i17]+[i17]-[i17]],1)
  
  call suba010([[[[[[[[[[i11]]]]]]]]]],1)
  call suba010([[[[[[[[[[i12]]]]]]]]]],1)
  call suba010([[[[[[[[[[i13]]]]]]]]]],1)
  call suba010([[[[[[[[[[i14]]]]]]]]]],1)
  call suba010([[[[[[[[[[i15]]]]]]]]]],1)
  call suba010([[[[[[[[[[i16]]]]]]]]]],1)
  call suba010([[[[[[[[[[i17]]]]]]]]]],1)
  
  call suba010([[i11],[i11]],2)
  call suba010([[i12],[i12]],2)
  call suba010([[i13],[i13]],2)
  call suba010([[i14],[i14]],2)
  call suba010([[i15],[i15]],2)
  call suba010([[i16],[i16]],2)
  call suba010([[i17],[i17]],2)
  
  call suba010([[[[[i11]]]],i1],2)
  call suba010([[[[[i12]]]],i1],2)
  call suba010([[[[[i13]]]],i1],2)
  call suba010([[[[[i14]]]],i1],2)
  call suba010([[[[[i15]]]],i1],2)
  call suba010([[[[[i16]]]],i1],2)
  call suba010([[[[[i17]]]],i1],2)
  
  call suba010([[[[[+i11]]]],i1],2)
  call suba010([[[[[+i12]]]],i1],2)
  call suba010([[[[[+i13]]]],i1],2)
  call suba010([[[[[+i14]]]],i1],2)
  call suba010([[[[[+i15]]]],i1],2)
  call suba010([[[[[+i16]]]],i1],2)
  call suba010([[[[[+i17]]]],i1],2)
  
  call suba010([[[[[i11]]]],+i1],2)
  call suba010([[[[[i12]]]],+i1],2)
  call suba010([[[[[i13]]]],+i1],2)
  call suba010([[[[[i14]]]],+i1],2)
  call suba010([[[[[i15]]]],+i1],2)
  call suba010([[[[[i16]]]],+i1],2)
  call suba010([[[[[i17]]]],+i1],2)
  
  call suba010([[i11],[i12],[i13],[i14],&
       [i15],[i16],[i17],i1],8)
  
end subroutine jjjj
subroutine suba001(x,y)
  integer(1):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba001

subroutine suba002(x,y)
  integer(2):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba002

subroutine suba003(x,y)
  integer(4):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba003
subroutine suba004(x,y)
  integer(8):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba004
subroutine suba005(x,y)
  real(4):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba005
subroutine suba006(x,y)
  real(8):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba006
subroutine suba007(x,y)
  real(16):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba007
subroutine suba008(x,y)
  complex(4):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba008
subroutine suba009(x,y)
  complex(8):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba009
subroutine suba010(x,y)
  complex(16):: x(:),z
  integer(4):: y
  z=1
  do i=1,y
     if(x(i).ne.z) print *,'fail'
  enddo
end subroutine suba010
end program
