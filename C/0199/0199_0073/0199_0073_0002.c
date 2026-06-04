#include <stdlib.h>
signed int v1 (unsigned short, signed int, unsigned short);
signed int (*v2) (unsigned short, signed int, unsigned short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, signed short, signed int, signed short);
extern void (*v10) (unsigned char, signed short, signed int, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
extern unsigned char v15 (signed short, signed short);
extern unsigned char (*v16) (signed short, signed short);
extern unsigned short v17 (signed char, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char);
static signed char v19 (unsigned short);
static signed char (*v20) (unsigned short) = v19;
extern unsigned char v21 (unsigned char, unsigned char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned char, signed int);
extern unsigned char (*v24) (signed char, unsigned char, signed int);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (unsigned char, unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 5;
unsigned int v72 = 0U;
signed int v71 = 2;

static signed char v19 (unsigned short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 1;
signed int v76 = -4;
signed char v75 = 3;
trace++;
switch (trace)
{
case 1: 
return v75;
case 3: 
return -3;
default: abort ();
}
}
}
}

signed int v1 (unsigned short v78, signed int v79, unsigned short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -4;
signed char v82 = 3;
signed char v81 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v84;
signed char v85;
v84 = v80 - 0;
v85 = v19 (v84);
history[history_index++] = (int)v85;
}
break;
case 2: 
{
unsigned short v86;
signed char v87;
v86 = v78 - 3;
v87 = v19 (v86);
history[history_index++] = (int)v87;
}
break;
case 4: 
{
signed char v88;
unsigned char v89;
unsigned short v90;
v88 = v82 + v82;
v89 = 0 - 0;
v90 = v17 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return v79;
default: abort ();
}
}
}
}
