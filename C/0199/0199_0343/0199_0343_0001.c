#include <stdlib.h>
unsigned int v1 (signed short);
unsigned int (*v2) (signed short) = v1;
extern signed char v3 (signed int, signed int, signed int, signed short);
extern signed char (*v4) (signed int, signed int, signed int, signed short);
extern void v5 (signed short, signed int);
extern void (*v6) (signed short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v11 (unsigned short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned short, signed int, unsigned char);
unsigned int v15 (unsigned int, signed short);
unsigned int (*v16) (unsigned int, signed short) = v15;
extern signed char v17 (signed char, signed int, signed char, signed int);
extern signed char (*v18) (signed char, signed int, signed char, signed int);
extern unsigned int v19 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, signed char);
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned char, signed short, signed short);
extern signed int (*v26) (unsigned char, signed short, signed short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 6;
unsigned short v48 = 5;
signed char v47 = 1;

unsigned int v15 (unsigned int v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 4U;
unsigned short v53 = 2;
unsigned short v52 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -3;
unsigned char v57 = 2;
unsigned char v56 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v59;
v59 = v23 ();
history[history_index++] = (int)v59;
}
break;
case 2: 
{
unsigned char v60;
v60 = v7 ();
history[history_index++] = (int)v60;
}
break;
case 18: 
return 3U;
default: abort ();
}
}
}
}
