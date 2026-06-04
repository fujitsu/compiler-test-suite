#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
signed short v7 (signed char, unsigned short, signed int);
signed short (*v8) (signed char, unsigned short, signed int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned char, signed char, unsigned int, signed int);
extern signed char (*v12) (unsigned char, signed char, unsigned int, signed int);
extern unsigned int v13 (signed char, signed short);
extern unsigned int (*v14) (signed char, signed short);
extern unsigned int v15 (unsigned short, signed short);
extern unsigned int (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned short, unsigned short, signed char);
extern unsigned char (*v18) (unsigned short, unsigned short, signed char);
extern unsigned short v19 (signed int, unsigned short);
extern unsigned short (*v20) (signed int, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (signed int, unsigned short, unsigned char, signed char);
extern signed char (*v24) (signed int, unsigned short, unsigned char, signed char);
signed short v25 (unsigned short, unsigned int, unsigned char, signed char);
signed short (*v26) (unsigned short, unsigned int, unsigned char, signed char) = v25;
unsigned short v29 (signed short);
unsigned short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = -4;
unsigned int v49 = 5U;
unsigned char v48 = 0;

unsigned short v29 (signed short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 0;
unsigned short v53 = 6;
signed short v52 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (unsigned short v55, unsigned int v56, unsigned char v57, signed char v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = 2;
signed short v60 = 3;
unsigned short v59 = 6;
trace++;
switch (trace)
{
case 1: 
return v60;
default: abort ();
}
}
}
}

signed short v7 (signed char v62, unsigned short v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 0U;
signed short v66 = 1;
signed char v65 = -3;
trace++;
switch (trace)
{
case 11: 
return -4;
default: abort ();
}
}
}
}
