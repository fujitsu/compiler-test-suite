#include <stdlib.h>
extern void v1 (unsigned short, signed int, unsigned int, signed short);
extern void (*v2) (unsigned short, signed int, unsigned int, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
unsigned int v5 (unsigned short, signed char);
unsigned int (*v6) (unsigned short, signed char) = v5;
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
unsigned short v11 (signed short);
unsigned short (*v12) (signed short) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed char);
extern void (*v18) (signed char);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern unsigned int v29 (unsigned int, unsigned char);
extern unsigned int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 2;
signed short v63 = -4;
unsigned int v62 = 1U;

unsigned short v11 (signed short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
unsigned int v67 = 3U;
unsigned short v66 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
signed int v71 = 2;
signed short v70 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v73;
unsigned short v74;
v73 = 6 + 5;
v74 = v23 (v73);
history[history_index++] = (int)v74;
}
break;
case 9: 
return 4;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v75, signed char v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 2;
unsigned int v78 = 1U;
signed int v77 = 1;
trace++;
switch (trace)
{
case 11: 
return v78;
default: abort ();
}
}
}
}
