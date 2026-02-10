integer, target :: u
volatile i
pointer(i,ip)
i = loc(u)
u = 1
ip = 2
if (u .eq. ip) then
  print *,"ok"
else
  print *,"ng",u,ip
endif
end
