#include <stdlib.h>
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
signed short v5 (unsigned int, unsigned int);
signed short (*v6) (unsigned int, unsigned int) = v5;
extern void v7 (unsigned char, signed int, unsigned short);
extern void (*v8) (unsigned char, signed int, unsigned short);
extern unsigned short v9 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned short, signed int, unsigned char);
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char);
extern unsigned short v15 (signed char, signed char, signed short, unsigned char);
extern unsigned short (*v16) (signed char, signed char, signed short, unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed int, signed int, unsigned char);
extern signed char (*v24) (signed int, signed int, unsigned char);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
unsigned short v27 (unsigned char, signed char, signed char);
unsigned short (*v28) (unsigned char, signed char, signed char) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = -1;
unsigned short v61 = 3;
signed short v60 = -4;

unsigned short v27 (unsigned char v63, signed char v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 1;
unsigned char v67 = 3;
signed int v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
unsigned char v71 = 3;
unsigned int v70 = 2U;
signed int v69 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -2;
signed int v75 = 2;
signed int v74 = -3;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v77;
unsigned short v78;
unsigned char v79;
v77 = 0 - 2;
v78 = 7 - 1;
v79 = 5 - 7;
v13 (v77, v78, v79);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
