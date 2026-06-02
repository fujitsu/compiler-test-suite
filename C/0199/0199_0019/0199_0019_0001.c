#include <stdlib.h>
unsigned short v1 (signed char, signed int, unsigned char);
unsigned short (*v2) (signed char, signed int, unsigned char) = v1;
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
extern signed short v7 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, signed char, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed int, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned int, signed short);
extern signed int v13 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed char, signed char, unsigned short, signed short);
extern unsigned short v17 (unsigned char, signed int);
extern unsigned short (*v18) (unsigned char, signed int);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
extern signed char v27 (unsigned short, signed short, unsigned int, signed char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, signed char);
extern unsigned int v29 (signed int, unsigned int, signed short);
extern unsigned int (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v64 = -1;
signed char v63 = -3;
signed char v62 = -3;

unsigned int v3 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -1;
unsigned int v67 = 4U;
signed int v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v69, signed int v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 0U;
unsigned int v73 = 6U;
signed char v72 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v75;
v75 = v23 ();
history[history_index++] = (int)v75;
}
break;
case 2: 
{
signed int v76;
v76 = v9 ();
history[history_index++] = (int)v76;
}
break;
case 6: 
{
unsigned char v77;
signed int v78;
unsigned short v79;
v77 = 3 + 5;
v78 = -3 - 1;
v79 = v17 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
