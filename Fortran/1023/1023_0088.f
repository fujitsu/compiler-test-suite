       common str
       structure /st/
	  integer*1 st_int1
	  integer*2 st_int2
 	  character*1 st_char1
       end structure
       record /st/ str

       str%st_int1 = 1
       str%st_int2 = 2
       str%st_char1 = 's'
       print *,str%st_int1
       print *,str%st_int2
       print *,str%st_char1
       call ent(str%st_int1,str%st_int2,str%st_char1)
       print *,str%st_int1
       print *,str%st_int2
       call ent2()
       print *,str%st_int1
       print *,str%st_int2
       end

       subroutine sub()
       common str
       structure /st/
	  integer*1 st_int1
	  integer*2 st_int2
 	  character*1 st_char1
       end structure
       record /st/ str
       integer*1   ent_1
       integer*2   ent_2
       character*1 ent_c
       print *,'***ng***'
       print *,'***ng***'
       print *,'***ng***'
 
       entry ent(ent_1,ent_2,ent_c)
       print *,ent_1
       print *,ent_2
       print *,ent_c
       ent_1=3
       ent_2=4
       ent_c='t'
       return
 
       entry ent2()
       print *,str%st_int1
       print *,str%st_int2
       print *,str%st_char1
       str%st_int1=5
       str%st_int2=6
       str%st_char1='u'
       print *,str%st_int1
       print *,str%st_int2
       print *,str%st_char1
       end
