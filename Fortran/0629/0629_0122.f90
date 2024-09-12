 parameter (i=10)
 character*(i) ee(i),cc(i)
 logical t(i)/i*.true./
 ee='0'
 cc='0'
  t = any(transfer(ee,ee)/=cc)
  print *,t
 end
