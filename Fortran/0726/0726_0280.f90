 character*18 ,target::b
 character*3  ,pointer::o,t
 o=>b(7:9)
 t=>b(16:18)
 b='123456789abcdefgih'
 if (o/='789')write(6,*) "NG"
 if (t/='gih')write(6,*) "NG"
 print *,'pass'
 end
