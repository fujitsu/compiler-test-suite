#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
extern void v3 (void);
extern void (*v4) (void);
signed short v5 (unsigned int, unsigned char);
signed short (*v6) (unsigned int, unsigned char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (signed short, signed int);
extern unsigned int (*v12) (signed short, signed int);
extern void v13 (signed char, unsigned short);
extern void (*v14) (signed char, unsigned short);
signed char v15 (signed short, signed int, signed char, signed char);
signed char (*v16) (signed short, signed int, signed char, signed char) = v15;
extern signed short v17 (signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed char, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, unsigned char);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned short v25 (signed int, unsigned char, signed char);
extern unsigned short (*v26) (signed int, unsigned char, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v67 = -1;
signed int v66 = 0;
signed int v65 = 3;

signed short v23 (void)
{
{
for (;;) {
signed char v70 = -4;
unsigned char v69 = 7;
unsigned int v68 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed short v71, signed int v72, signed char v73, signed char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -2;
signed int v76 = -2;
unsigned int v75 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 2;
signed short v81 = 3;
unsigned char v80 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v83;
unsigned short v84;
v83 = 1 + 1;
v84 = v9 (v83);
history[history_index++] = (int)v84;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
