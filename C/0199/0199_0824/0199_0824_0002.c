#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (signed char, signed short);
extern unsigned int (*v6) (signed char, signed short);
extern signed char v7 (signed short, signed char, signed char, unsigned int);
extern signed char (*v8) (signed short, signed char, signed char, unsigned int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (signed char, unsigned char);
extern signed short (*v16) (signed char, unsigned char);
signed short v17 (unsigned int, signed short);
signed short (*v18) (unsigned int, signed short) = v17;
extern unsigned char v19 (signed char, unsigned short);
extern unsigned char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v28) (unsigned int, unsigned int, signed char, signed short);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 0;
signed short v85 = 2;
signed char v84 = 1;

signed short v17 (unsigned int v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 1;
unsigned char v90 = 6;
unsigned short v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
unsigned short v94 = 4;
unsigned short v93 = 1;
signed int v92 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v95;
v95 = v25 ();
history[history_index++] = (int)v95;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v98 = -1;
signed int v97 = 3;
unsigned char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
