#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned int, unsigned int, unsigned char, unsigned short);
extern void (*v8) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, signed char, signed char, unsigned char);
extern signed int (*v16) (unsigned short, signed char, signed char, unsigned char);
signed short v17 (signed char);
signed short (*v18) (signed char) = v17;
extern void v19 (signed short, unsigned short);
extern void (*v20) (signed short, unsigned short);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned char);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned char);
static unsigned char v27 (signed int, signed short, signed int, signed int);
static unsigned char (*v28) (signed int, signed short, signed int, signed int) = v27;
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = 3;
signed int v61 = 3;
signed char v60 = 3;

static unsigned char v27 (signed int v63, signed short v64, signed int v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 0;
unsigned char v68 = 6;
unsigned int v67 = 2U;
trace++;
switch (trace)
{
case 6: 
{
signed int v70;
unsigned char v71;
v70 = v63 - -4;
v71 = v29 (v70);
history[history_index++] = (int)v71;
}
break;
case 8: 
{
signed int v72;
unsigned char v73;
v72 = v66 - v66;
v73 = v29 (v72);
history[history_index++] = (int)v73;
}
break;
case 10: 
{
signed int v74;
unsigned char v75;
v74 = v63 - v63;
v75 = v29 (v74);
history[history_index++] = (int)v75;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

signed short v17 (signed char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 0;
unsigned short v78 = 3;
signed short v77 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed int v80;
signed short v81;
signed int v82;
signed int v83;
unsigned char v84;
v80 = v79 - -4;
v81 = 0 - 0;
v82 = -2 - -1;
v83 = -2 - v79;
v84 = v27 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
