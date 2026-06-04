#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (unsigned char, unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned char, unsigned short);
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned int, signed char, unsigned short);
extern void (*v8) (signed int, unsigned int, signed char, unsigned short);
extern signed short v9 (unsigned int, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned short v13 (signed short, signed char);
extern unsigned short (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed short);
extern signed int (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, unsigned short);
extern void (*v24) (signed char, unsigned char, unsigned short);
extern unsigned short v25 (signed char, unsigned int);
extern unsigned short (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -1;
signed char v67 = -3;
signed int v66 = -4;

unsigned char v11 (void)
{
{
for (;;) {
signed int v71 = 1;
unsigned int v70 = 6U;
signed short v69 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v74 = -4;
unsigned int v73 = 7U;
unsigned int v72 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed short v75;
signed short v76;
signed char v77;
v75 = 2 + 0;
v76 = -4 + 3;
v77 = v5 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 2: 
{
unsigned int v78;
unsigned char v79;
signed short v80;
v78 = 0U - v73;
v79 = 5 - 5;
v80 = v9 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 10: 
{
unsigned char v81;
unsigned char v82;
unsigned short v83;
signed short v84;
v81 = 6 + 2;
v82 = 2 - 1;
v83 = 6 - 5;
v84 = v3 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
