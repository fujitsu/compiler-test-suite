#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (signed short, unsigned char, signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char, signed short, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed int v17 (signed char, signed char);
signed int (*v18) (signed char, signed char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int);
extern signed char v27 (signed int, unsigned char, unsigned short, unsigned short);
extern signed char (*v28) (signed int, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 6;
signed char v60 = 1;
unsigned short v59 = 5;

signed int v17 (signed char v62, signed char v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 0;
signed char v65 = 0;
unsigned int v64 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned short v69 = 2;
signed int v68 = -3;
signed int v67 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v70;
v70 = v69 + v69;
v5 (v70);
}
break;
case 2: 
{
signed short v71;
unsigned char v72;
signed short v73;
unsigned char v74;
signed char v75;
v71 = 1 - 1;
v72 = 0 - 0;
v73 = -4 - -4;
v74 = 4 - 5;
v75 = v11 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
