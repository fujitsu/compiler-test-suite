#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed short v5 (signed short, signed char, unsigned short);
signed short (*v6) (signed short, signed char, unsigned short) = v5;
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
signed short v13 (signed short, unsigned short, unsigned char);
signed short (*v14) (signed short, unsigned short, unsigned char) = v13;
extern unsigned short v15 (signed short, unsigned short, unsigned int);
extern unsigned short (*v16) (signed short, unsigned short, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed char, unsigned int);
extern signed char (*v22) (signed char, unsigned int);
extern signed char v23 (unsigned char, unsigned char);
extern signed char (*v24) (unsigned char, unsigned char);
extern signed int v25 (signed char, unsigned char, signed short, unsigned char);
extern signed int (*v26) (signed char, unsigned char, signed short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned short, signed short);
extern void (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = 3;
signed char v52 = -4;
unsigned int v51 = 6U;

signed short v13 (signed short v54, unsigned short v55, unsigned char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 0;
signed int v58 = 3;
signed int v57 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v60;
signed int v61;
v60 = 5U - 2U;
v61 = v17 (v60);
history[history_index++] = (int)v61;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v11 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
signed short v64 = 1;
signed int v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v66, signed char v67, unsigned short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 6U;
signed short v70 = 2;
unsigned char v69 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
