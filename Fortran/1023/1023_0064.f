       character*30 para1
       character*40 para2
       rc = ch5(para1,para2)
       end

       function ch5(para1,para2)
       character*(*) para1,para2
       ch5 = 3
       para1 = 'paraparaparaparapara11111111'
       para2 = 'paraparaparaparapara'
       print *,ch5
       print *,para1
       print *,para2
       return
       entry ent(para1,para2)
       end
