#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, signed char);
extern void (*v10) (signed short, signed char);
extern signed int v11 (signed short, signed char, signed char);
extern signed int (*v12) (signed short, signed char, signed char);
extern unsigned char v13 (signed int, unsigned short, signed short, unsigned int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, unsigned int);
signed short v15 (signed short, signed short);
signed short (*v16) (signed short, signed short) = v15;
extern signed int v19 (signed short, unsigned short, signed short);
extern signed int (*v20) (signed short, unsigned short, signed short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned short v29 (unsigned char, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v59 = 2U;
unsigned char v58 = 7;
unsigned char v57 = 5;

unsigned short v27 (void)
{
{
for (;;) {
unsigned short v62 = 5;
unsigned int v61 = 0U;
signed char v60 = -4;
trace++;
switch (trace)
{
case 4: 
return v62;
case 6: 
return 6;
case 8: 
return v62;
case 10: 
return 4;
default: abort ();
}
}
}
}

signed short v15 (signed short v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 6U;
signed short v66 = -2;
unsigned int v65 = 5U;
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
signed char v70 = 0;
signed short v69 = 3;
unsigned int v68 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v71;
signed char v72;
v71 = -3 - -1;
v72 = 3 + v70;
v9 (v71, v72);
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
