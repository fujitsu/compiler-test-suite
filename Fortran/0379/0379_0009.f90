enum,bind(c)
  enumerator :: aaa = 100
end enum
enum,bind(c)
  enumerator :: bbb = 200,ccc,ddd=300,eee
  enumerator :: fff = 200,ggg,hhh=300,iii
end enum
if (aaa .ne. 100) print *,'ng aaa'
if (bbb .ne. 200) print *,'ng bbb'
if (ccc .ne. 201) print *,'ng ccc'
if (ddd .ne. 300) print *,'ng ddd'
if (eee .ne. 301) print *,'ng eee'
if (fff .ne. 200) print *,'ng fff'
if (ggg .ne. 201) print *,'ng ggg'
if (hhh .ne. 300) print *,'ng hhh'
if (iii .ne. 301) print *,'ng iii'
print *,'ok'
end
