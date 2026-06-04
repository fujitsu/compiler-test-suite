#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
void v3 (signed char, unsigned int);
void (*v4) (signed char, unsigned int) = v3;
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned int, signed int);
extern void (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int);
extern void (*v18) (signed char, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (signed char, unsigned char, signed short);
extern unsigned short (*v26) (signed char, unsigned char, signed short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = 2;
unsigned int v63 = 3U;
signed int v62 = 1;

void v3 (signed char v65, unsigned int v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 4;
unsigned int v68 = 0U;
signed short v67 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v70;
unsigned int v71;
signed int v72;
v70 = 2 + -1;
v71 = v68 + 6U;
v72 = 3 - 2;
v11 (v70, v71, v72);
}
break;
case 3: 
{
signed int v73;
unsigned int v74;
signed int v75;
v73 = 3 - -3;
v74 = 5U + 0U;
v75 = -3 + 0;
v11 (v73, v74, v75);
}
break;
case 5: 
{
signed int v76;
unsigned int v77;
signed int v78;
v76 = 1 - -2;
v77 = v66 - v66;
v78 = 0 + 0;
v11 (v76, v77, v78);
}
break;
case 7: 
{
signed int v79;
unsigned int v80;
signed int v81;
v79 = -4 + 0;
v80 = v66 - 3U;
v81 = -3 - 2;
v11 (v79, v80, v81);
}
break;
case 9: 
{
signed int v82;
unsigned int v83;
signed int v84;
v82 = 3 - -2;
v83 = v68 + v66;
v84 = -1 - 0;
v11 (v82, v83, v84);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
