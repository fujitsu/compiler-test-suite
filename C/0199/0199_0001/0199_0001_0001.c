#include <stdlib.h>
signed int v1 (signed short, signed char, unsigned short);
signed int (*v2) (signed short, signed char, unsigned short) = v1;
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed short v11 (signed int, unsigned short);
extern signed short (*v12) (signed int, unsigned short);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (signed char, signed char, unsigned char, signed int);
extern signed short (*v20) (signed char, signed char, unsigned char, signed int);
extern signed short v21 (signed int, unsigned char, unsigned char, unsigned char);
extern signed short (*v22) (signed int, unsigned char, unsigned char, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v25 (unsigned char, signed short, signed char);
extern unsigned short (*v26) (unsigned char, signed short, signed char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 0;
unsigned char v62 = 2;
signed char v61 = 1;

signed short v27 (void)
{
{
for (;;) {
signed short v66 = -2;
signed char v65 = -2;
unsigned short v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v67, signed char v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
unsigned short v71 = 0;
unsigned char v70 = 1;
trace++;
switch (trace)
{
case 0: 
{
v13 ();
}
break;
case 2: 
{
signed short v73;
signed char v74;
v73 = 2 - 2;
v74 = v9 (v73);
history[history_index++] = (int)v74;
}
break;
case 10: 
{
unsigned short v75;
unsigned short v76;
v75 = v71 - v69;
v76 = v17 (v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
