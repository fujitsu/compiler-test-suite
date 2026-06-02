#include <stdlib.h>
unsigned int v1 (unsigned char);
unsigned int (*v2) (unsigned char) = v1;
extern unsigned int v3 (unsigned int, unsigned short, unsigned char);
extern unsigned int (*v4) (unsigned int, unsigned short, unsigned char);
unsigned int v5 (signed short);
unsigned int (*v6) (signed short) = v5;
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern unsigned short v9 (signed short, signed short);
extern unsigned short (*v10) (signed short, signed short);
extern signed short v11 (signed int, unsigned short, signed int);
extern signed short (*v12) (signed int, unsigned short, signed int);
extern void v13 (signed short, signed short, unsigned short);
extern void (*v14) (signed short, signed short, unsigned short);
extern unsigned char v15 (unsigned short, signed int, signed char);
extern unsigned char (*v16) (unsigned short, signed int, signed char);
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
extern unsigned short v21 (signed int);
extern unsigned short (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (signed short, signed short, unsigned char);
extern signed short (*v30) (signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v57 = 2U;
unsigned short v56 = 5;
signed char v55 = 0;

unsigned int v5 (signed short v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = -2;
unsigned int v60 = 2U;
unsigned char v59 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 6;
unsigned char v64 = 2;
unsigned short v63 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v66;
unsigned short v67;
signed int v68;
signed short v69;
v66 = -4 - 3;
v67 = 6 + 0;
v68 = -4 - 1;
v69 = v11 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 2: 
{
signed short v70;
signed short v71;
unsigned char v72;
signed short v73;
v70 = -3 - -4;
v71 = 0 + 1;
v72 = v65 - v62;
v73 = v29 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 4: 
{
signed short v74;
signed short v75;
unsigned char v76;
signed short v77;
v74 = 3 - 2;
v75 = 2 + 2;
v76 = v65 - v65;
v77 = v29 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
{
signed int v78;
unsigned short v79;
v78 = 1 + 1;
v79 = v21 (v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
{
unsigned char v80;
unsigned short v81;
v80 = v62 - v62;
v81 = v7 (v80);
history[history_index++] = (int)v81;
}
break;
case 10: 
{
unsigned int v82;
signed short v83;
signed char v84;
unsigned char v85;
unsigned char v86;
v82 = 4U - 6U;
v83 = 2 + -2;
v84 = -4 + -3;
v85 = v64 + 7;
v86 = v17 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}
