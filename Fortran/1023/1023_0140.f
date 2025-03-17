       character str*10
       str(1:3)='***'
       print *,str(1:3)
       str(:5)='------'
       print *,str(:5)
       str(3:)='@@@@@@@@'
       print *,str(3:)
       str(:)='##########'
       print *,str(:)
       end
