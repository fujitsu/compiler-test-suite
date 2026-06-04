#include <stdlib.h>
extern unsigned short v3 (signed int, unsigned char);
extern unsigned short (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed char);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed char);
extern signed int v7 (signed int, signed int, unsigned char);
extern signed int (*v8) (signed int, signed int, unsigned char);
extern signed char v9 (unsigned int, signed short);
extern signed char (*v10) (unsigned int, signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned int, unsigned short);
extern unsigned int (*v14) (unsigned int, unsigned short);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern void v21 (unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned int, unsigned int, signed short);
unsigned int v23 (unsigned short, unsigned short);
unsigned int (*v24) (unsigned short, unsigned short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
extern unsigned short v29 (unsigned int, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = -1;
unsigned short v61 = 0;
unsigned short v60 = 6;

unsigned int v23 (unsigned short v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 0;
unsigned short v66 = 6;
signed short v65 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v70 = 3U;
unsigned int v69 = 4U;
signed char v68 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v71;
unsigned char v72;
unsigned short v73;
v71 = 4U + v70;
v72 = 6 + 7;
v73 = v29 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 3: 
{
unsigned int v74;
unsigned char v75;
unsigned short v76;
v74 = 2U + 2U;
v75 = 5 + 3;
v76 = v29 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 5: 
return 5;
default: abort ();
}
}
}
}
