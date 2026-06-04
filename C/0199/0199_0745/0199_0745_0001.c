#include <stdlib.h>
extern signed short v1 (unsigned char, signed int);
extern signed short (*v2) (unsigned char, signed int);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned int v5 (signed short, signed short, unsigned int, unsigned int);
unsigned int (*v6) (signed short, signed short, unsigned int, unsigned int) = v5;
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
extern unsigned short v15 (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (unsigned char, signed short);
extern unsigned char (*v18) (unsigned char, signed short);
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
extern unsigned int v21 (signed char, unsigned short, signed short);
extern unsigned int (*v22) (signed char, unsigned short, signed short);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (signed short, signed char, signed short, unsigned int);
extern unsigned short (*v26) (signed short, signed char, signed short, unsigned int);
extern unsigned char v27 (signed int, unsigned char);
extern unsigned char (*v28) (signed int, unsigned char);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = 1;
unsigned int v57 = 7U;
signed short v56 = -1;

unsigned int v5 (signed short v59, signed short v60, unsigned int v61, unsigned int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 2;
signed char v64 = -3;
unsigned int v63 = 4U;
trace++;
switch (trace)
{
case 1: 
{
signed int v66;
unsigned char v67;
unsigned char v68;
v66 = -4 - 3;
v67 = 2 + 5;
v68 = v27 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 3: 
{
signed int v69;
unsigned char v70;
unsigned char v71;
v69 = -1 + 3;
v70 = 1 + 6;
v71 = v27 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 5: 
{
signed int v72;
unsigned char v73;
unsigned char v74;
v72 = 3 - -1;
v73 = 5 - 3;
v74 = v27 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 7: 
{
signed int v75;
unsigned char v76;
unsigned char v77;
v75 = 3 - -3;
v76 = 3 + 2;
v77 = v27 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 9: 
{
signed int v78;
unsigned char v79;
unsigned char v80;
v78 = 0 + 3;
v79 = 0 - 6;
v80 = v27 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}
