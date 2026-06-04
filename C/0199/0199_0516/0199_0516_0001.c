#include <stdlib.h>
signed short v1 (signed int, signed int);
signed short (*v2) (signed int, signed int) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed char, signed char, signed char);
extern void (*v6) (signed short, signed char, signed char, signed char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed short v19 (signed short, signed char, unsigned short);
extern signed short (*v20) (signed short, signed char, unsigned short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
unsigned int v23 (unsigned char, unsigned int, signed char, unsigned short);
unsigned int (*v24) (unsigned char, unsigned int, signed char, unsigned short) = v23;
extern signed short v25 (signed int, unsigned int);
extern signed short (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern unsigned char v29 (unsigned char, unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 2;
signed short v57 = 2;
signed char v56 = 2;

unsigned int v23 (unsigned char v59, unsigned int v60, signed char v61, unsigned short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
unsigned int v64 = 4U;
signed short v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 0;
unsigned char v69 = 5;
signed short v68 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v71;
signed char v72;
unsigned short v73;
signed short v74;
v71 = v70 + -2;
v72 = -2 + -3;
v73 = 2 + 4;
v74 = v19 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 2: 
{
v7 ();
}
break;
case 14: 
return v68;
default: abort ();
}
}
}
}
