#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
static unsigned short v3 (signed char);
static unsigned short (*v4) (signed char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed short v15 (unsigned int, signed int, signed int, unsigned short);
extern signed short (*v16) (unsigned int, signed int, signed int, unsigned short);
extern unsigned short v17 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v18) (signed char, signed short, signed char, unsigned short);
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v67 = 3;
signed short v66 = -3;
unsigned char v65 = 6;

static unsigned short v3 (signed char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -3;
signed int v70 = 3;
signed int v69 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v72;
unsigned int v73;
v72 = 3 + 2;
v73 = v25 (v72);
history[history_index++] = (int)v73;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed short v76 = 3;
signed char v75 = 1;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
unsigned short v78;
v77 = v75 + v75;
v78 = v3 (v77);
history[history_index++] = (int)v78;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
