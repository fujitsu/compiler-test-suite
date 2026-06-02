#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned char, signed char, signed char);
extern signed int (*v2) (unsigned short, unsigned char, signed char, signed char);
unsigned short v3 (signed short);
unsigned short (*v4) (signed short) = v3;
extern signed char v5 (signed int, unsigned short);
extern signed char (*v6) (signed int, unsigned short);
extern signed char v7 (unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int);
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
extern signed short v11 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed short (*v12) (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int v13 (signed char, signed int, unsigned short, signed char);
extern signed int (*v14) (signed char, signed int, unsigned short, signed char);
extern signed int v15 (unsigned char, signed short);
extern signed int (*v16) (unsigned char, signed short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed short, signed char, unsigned char);
extern void (*v24) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (signed char, unsigned short, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned int);
extern signed char v29 (signed char, signed int);
extern signed char (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v67 = 4U;
unsigned char v66 = 1;
unsigned int v65 = 7U;

unsigned short v17 (void)
{
{
for (;;) {
signed char v70 = 1;
unsigned int v69 = 5U;
signed int v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 5;
signed short v73 = 2;
signed short v72 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v75;
unsigned short v76;
unsigned int v77;
unsigned char v78;
v75 = 2 + -4;
v76 = v74 - v74;
v77 = 0U - v71;
v78 = v27 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 3: 
return 3;
default: abort ();
}
}
}
}

unsigned short v3 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
signed short v81 = 1;
unsigned int v80 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
