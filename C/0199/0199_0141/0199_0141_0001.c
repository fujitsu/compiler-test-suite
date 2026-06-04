#include <stdlib.h>
extern void v3 (signed char, signed short);
extern void (*v4) (signed char, signed short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
signed int v7 (signed int, unsigned short, signed char);
signed int (*v8) (signed int, unsigned short, signed char) = v7;
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, signed short, signed short);
extern signed char (*v20) (signed int, signed short, signed short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed int v23 (unsigned short, signed int, signed char);
extern signed int (*v24) (unsigned short, signed int, signed char);
unsigned char v27 (unsigned short, signed char);
unsigned char (*v28) (unsigned short, signed char) = v27;
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 1;
signed short v64 = -3;
unsigned short v63 = 5;

unsigned char v27 (unsigned short v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 0;
signed short v69 = -2;
unsigned int v68 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 2;
unsigned char v73 = 5;
unsigned int v72 = 7U;
trace++;
switch (trace)
{
case 9: 
return -3;
default: abort ();
}
}
}
}

signed int v7 (signed int v75, unsigned short v76, signed char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 2;
signed int v79 = 3;
signed int v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
