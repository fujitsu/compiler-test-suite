#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define   max_reg    20
#define   pro_reg    12
#define   bad_reg    13
#define   wreg_no    8

struct zrm_attr{
     unsigned char        no_slct  :1;
     unsigned char        no_regst :1;
     unsigned char        attr_lc  :1;
     unsigned char        attr_gr  :1;
     unsigned char        attr_tr  :1;
     unsigned char        attr_pr  :1;
     unsigned char        attr_bs  :1;
     unsigned char        attr_rv  :1;
};
struct zrm_utype{
     struct   zrm_attr    reg_attr;
     long     int         reg_tbnum;
     unsigned long int    reg_tbptr;
     unsigned long int    reg_defnm;
};
struct zrm_type{
     char        used;
     unsigned short int   max_lreg;
     unsigned short int   min_lreg;
     unsigned short int   max_greg;
     unsigned short int   min_greg;
     struct   zrm_utype   ureg[20];
} r_type;
int init_attr (struct zrm_utype *ptr);
int u_check (void);
int rt_rget (int r_no);
int set_prg (void);
int init_reg (void);
int 
main (void)
{
     struct zrm_type     *zrmptr;
     int    i,j,k,l;
     int    reg_no;

     zrmptr=&r_type;
     reg_no = wreg_no;

     init_reg();
     set_prg();
     rt_rget(reg_no);
     if((reg_no = u_check()) == wreg_no)
           printf(" ==== test(scrna19) ok ====== \n");
     else
           printf(" ==== test(scrna19) ng ====== \n");
exit (0);
}
int 
init_reg (void)
{
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zrm_uptr;
     int    i;

     zrmptr=&r_type;
     for(i=0; i < max_reg ;i++){
          zrm_uptr=&(zrmptr->ureg[i]);
          zrm_uptr->reg_tbnum = 0;
          zrm_uptr->reg_tbptr = 0;
          zrm_uptr->reg_defnm = 0;
          init_attr(zrm_uptr);
     }
}
int 
init_attr (struct zrm_utype *ptr)
{
     struct zrm_attr     *attrptr;
     int    i,j;

     attrptr = &(ptr->reg_attr);
     attrptr->no_slct  = 0;
     attrptr->no_regst = 0;
     attrptr->attr_lc  = 0;
     attrptr->attr_gr  = 0;
     attrptr->attr_tr  = 0;
     attrptr->attr_pr  = 0;
     attrptr->attr_bs  = 0;
}
int 
set_prg (void)
{
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zrm_uptr;
     struct zrm_attr     *attrptr;
     int    reg_no;

     reg_no = pro_reg;
     zrmptr=&r_type;
     zrm_uptr=&(zrmptr->ureg[reg_no]);
     attrptr = &(zrm_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_pr = 1;

     reg_no = bad_reg;
     zrm_uptr=&(zrmptr->ureg[reg_no]);
     attrptr = &(zrm_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_bs = 1;
 }
 int 
rt_rget (int r_no)
 {
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zrm_uptr;
     struct zrm_attr     *attrptr;

     zrmptr=&r_type;
     zrmptr->max_lreg = r_no;
     zrmptr->min_greg = r_no+1;
     zrm_uptr=&(zrmptr->ureg[r_no]);
     zrm_uptr->reg_tbnum = 1000;
     zrm_uptr->reg_tbptr = 1000;
     zrm_uptr->reg_defnm = 10;
     attrptr = &(zrm_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_lc = 1;
     attrptr->no_regst= 1;
}
int 
u_check (void)
{
    struct zrm_type     *zrmptr;
    struct zrm_utype    *zrm_uptr;
    struct zrm_attr     *attrptr;
    int reg;
    zrmptr=&r_type;
    for(reg = zrmptr->min_lreg; reg <= zrmptr->max_lreg; reg++)
    {
        zrm_uptr = &(zrmptr->ureg[reg]);
        attrptr = &(zrm_uptr->reg_attr);
        if(attrptr->attr_lc == 1 && attrptr->no_slct == 1)
                return(reg);
    }
}
