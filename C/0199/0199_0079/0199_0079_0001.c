#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned char);
extern unsigned int (*v2) (signed short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
unsigned short v7 (unsigned int, unsigned short);
unsigned short (*v8) (unsigned int, unsigned short) = v7;
unsigned char v9 (unsigned int, signed int, unsigned short);
unsigned char (*v10) (unsigned int, signed int, unsigned short) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (signed char, unsigned short, signed char);
extern signed short (*v14) (signed char, unsigned short, signed char);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed int, signed short);
extern signed short (*v20) (signed int, signed short);
signed short v21 (unsigned char);
signed short (*v22) (unsigned char) = v21;
extern unsigned char v23 (signed short, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, unsigned short, unsigned char);
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
extern unsigned int v27 (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 1;
unsigned int v63 = 7U;
signed short v62 = 3;

signed short v21 (unsigned char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -3;
signed char v67 = 3;
unsigned int v66 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v69, signed int v70, unsigned short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 2;
unsigned short v73 = 4;
unsigned char v72 = 7;
trace++;
switch (trace)
{
case 10: 
{
signed int v75;
signed short v76;
signed short v77;
v75 = v70 + v70;
v76 = -2 + -1;
v77 = v19 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 5;
signed char v81 = 0;
signed int v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
