#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned int v3 (signed int, unsigned short);
extern unsigned int (*v4) (signed int, unsigned short);
extern signed int v5 (signed int, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed short v9 (unsigned short, signed char, signed short, unsigned short);
extern signed short (*v10) (unsigned short, signed char, signed short, unsigned short);
signed short v11 (signed short, unsigned char);
signed short (*v12) (signed short, unsigned char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned char v17 (signed int, unsigned char);
unsigned char (*v18) (signed int, unsigned char) = v17;
extern void v19 (unsigned short, signed char, signed char, signed char);
extern void (*v20) (unsigned short, signed char, signed char, signed char);
unsigned int v21 (signed int);
unsigned int (*v22) (signed int) = v21;
extern signed char v23 (signed char, unsigned short, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 1;
signed char v68 = -3;
signed char v67 = 2;

unsigned int v21 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 2U;
signed int v72 = 3;
signed char v71 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed int v74, unsigned char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 0;
signed char v77 = -4;
unsigned char v76 = 4;
trace++;
switch (trace)
{
case 3: 
return 4;
case 5: 
return 6;
case 7: 
return 6;
case 9: 
{
unsigned short v79;
signed char v80;
signed char v81;
signed char v82;
v79 = 0 - v78;
v80 = v77 - -3;
v81 = v77 - v77;
v82 = v77 + v77;
v19 (v79, v80, v81, v82);
}
break;
case 11: 
return v76;
default: abort ();
}
}
}
}

signed short v11 (signed short v83, unsigned char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 7U;
unsigned char v86 = 0;
unsigned char v85 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
